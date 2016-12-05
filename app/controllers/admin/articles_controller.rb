class Admin::ArticlesController < Admin::AdminController
  load_and_authorize_resource
  skip_load_resource :only => [:create]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def initialize(*params)
    super(*params)

    @category=t(:menu_board)
    @sub_menu=t(:submenu_notice)
    @controller_name=t('activerecord.models.notice')
  end

  # GET /articles
  # GET /articles.json
  def index
    unless params[:per_page].present?
      params[:per_page]=10
    end

    if params[:search_type].present?
      if(params[:search_type]=='content')
        likesql='notice_contents.content like ?'
        likep = '%'+params[:search_value].strip+'%'
      elsif(params[:search_type]=='title')
        likesql='articles.title like ?'
        likep= '%'+params[:search_value].strip+'%'
      end
    end

    if(params[:search_type] && params[:search_value])
      if(params[:search_type]=='content')
        @articles = Article.joins(:notice_content).where(likesql,likep).order('id desc').page(params[:page]).per(params[:per_page])
      else
        @articles = Article.where(likesql,likep).order('id desc').page(params[:page]).per(params[:per_page])
      end
    else
      @articles = Article.order('id desc').page(params[:page]).per(params[:per_page])
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @artcile = Article.new
    @artcile.build_notice_content

    @script='boards/new'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @artcile }
    end
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @artcile = Article.new(notice_params)

    @script='boards/new'

    respond_to do |format|
      if @artcile.save
        format.html { redirect_to admin_notice_path(@artcile), :notice => @controller_name +t(:message_success_insert)}
        format.json { render :json => @artcile, :status => :created, :location => @artcile }
      else
        format.html { render :action => "new" }
        format.json { render :json => @artcile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @artcile.update(notice_params)
        format.html { redirect_to admin_notice_path(@artcile), :notice => @controller_name +t(:message_success_update)  }
        format.json { render :show, status: :ok, location: @artcile }
      else
        format.html { render :edit }
        format.json { render json: @artcile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @artcile.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_path }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @artcile = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title,:enable,:notice_content_attributes=>[:id,:content])
  end
end
