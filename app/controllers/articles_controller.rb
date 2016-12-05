class ArticlesController < ApplicationController
  layout :layout
  skip_load_resource :only => [:create]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Artile.new
    @article.build_article_content

    @script='boards/new'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @article }
    end
  end

  # GET /articles/1/edit
  def edit
  end

  def recommend
  end

  def confirm_delete

  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Artile.new(notice_params)

    @script='boards/new'

    respond_to do |format|
      if @article.save
        format.html { redirect_to admin_notice_path(@article), :notice => @controller_name +t(:message_success_insert)}
        format.json { render :json => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.json { render :json => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(notice_params)
        format.html { redirect_to admin_notice_path(@article), :notice => @controller_name +t(:message_success_update)  }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to admin_articles_path }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title,:enable,:article_photo_attributes=>[:id,:photo],:article_content_attributes=>[:id,:content])
  end
end