<section id="sl_community_index">
  <input type="hidden" id="total_article" value="<?php echo $data['total'] ?>" />
  <?php if($this->session->userdata('admin')): ?>  
  <div class="btn-group" role="group" aria-label="...">
    <?php // echo $Layout->element('search'); ?>
    <?php echo anchor('/add','<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'._('new_link'),array('class'=>"btn btn-default")) ?>
  </div>
  <?php endif ?>  
  <div class="grid js-masonry" data-masonry-options='{ "itemSelector": ".article"}' style="float:left;width:100%">
  	<?php if(isset($data['is_view'])): ?>
    <?php include __DIR__.DIRECTORY_SEPARATOR.'view.php' ?>
  	<?php endif ?>  	
    <?php if($data['total']): ?>
    <?php foreach($data['list'] as $index=>$content): ?>
    <div class="article col-xs-12 col-sm-6 col-md-4 col-lg-4">
      <article class="community_contents">
        <div class="sl_content_main">
          <?php if($content['photo']['total']): ?>
          <div class="carousel slide" id="article<?php echo $index ?>" data-ride="carousel<?php echo $index ?>" data-interval="8000">
            <div class="carousel-inner" role="listbox">
              <?php foreach($content['photo']['list'] as $photo_index=>$photo): ?>
              
              <!-- Wrapper for slides -->
              <div class="item<?php if(!$photo_index):?> active<?php endif ?>">
              	<!-- <a href="/uploads/communities/<?php echo $photo['file_name'] ?>" class="simple_image"> --><img class="img-responsive" src="/uploads/communities/thumb_<?php echo $photo['file_name'] ?>" alt="<?php echo $content['title'] ?>" /> <!-- </a> -->
              </div>              
              <?php endforeach ?>
            </div>
            <?php if($content['photo']['total']>1): ?>
            <a class="left carousel-control" href="#article<?php echo $index ?>" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Previous') ?></span> </a>
            <a class="right carousel-control" href="#article<?php echo $index ?>" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Next') ?></span> </a>
            <?php endif ?>
          </div>
          <?php endif ?>
          <div class="sl_content_content">
            <h3 itemprop="name" class="sl_content_title"><?php echo anchor('/view/'.$content['id'],$content['title'],array('class'=>'a_link'))  ?></h3>
						<div class="sl_content_text" itemprop="text">
							<?php echo anchor('/view/'.$content['id'],$content['description'],array('class'=>'a_link'))  ?>
							<div class="content_text_layer" style="display:none"></div>
							<span class="link_more"><?php echo _('link_more') ?></span>
						</div>
            <div class="create_info">
            	<img style="float:left;display:none" src="/uploads/users/thumb_<?php echo $content['user_photo'] ?>" alt="<?php echo $content['title'] ?>" width="50" height="50" class="img-circle" />
              <div style="float:left;margin-left:10px">
                <p style="display:none"><?php echo $content['nickname'] ?></p>
                <p><?php echo $content['created_at'] ?></p>
              </div>
            </div>
            <?php if($this->session->userdata('admin')): ?>            
            <div class="btn-group admin-btn" role="group">
              <div>
              	<?php echo anchor('/communities/confirm_delete/'.$content['id'],'<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>'._('delete_link'),array('class'=>"btn btn-default")) ?>
              	<?php echo anchor('/communities/edit/'.$content['id'],'<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'._('edit_link'),array('class'=>"btn btn-default"))	?>
              </div>
            </div>
            <?php endif ?>            
            <div style="border-top:1px solid #ccc;float:left;width:100%;padding:10px 0 0">
              <div class="btn-group" role="group" aria-label="..." style="float:left;margin-right:20px">
                <form class="recommend_form" action="/communities/recommend" method="post">
                  <input type="hidden" name="id" value="<?php echo $content['id'] ?>" />
                  <button type="submit" value="" class="btn btn-default" title="<?php echo _('recommend') ?>"> <span class="glyphicon glyphicon-heart"></span> <span class="recommend_count"><?php echo $content['recommend_count'] ?></span> </button>
                  <button type="button" class="btn btn-default btn-share" title="<?php echo _('share') ?>"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-share-alt"></span></button>
                </form>
              </div>
              <div class="btn-group" role="group" aria-label="..." style="float:right">
                <button class="btn btn-default dropdown-toggle comment_btn" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" title="<?php echo _('comment') ?>"> 의견 <span class="comment_count"><?php echo $content['comment_count'] ?></span> <span class="caret"></span> </button>
              </div>
            </div>
            <section class="comments" style="display:none">
              <?php if($content['comments']['total']): ?>
              <?php foreach($content['comments']['list'] as $index=>$comment): ?>
              <?php include __DIR__.DIRECTORY_SEPARATOR.'comment/index.php' ?>
              <?php endforeach ?>
              <?php endif ?>
              <?php $data['content']['id']=$content['id'] ?>
              <?php include __DIR__.DIRECTORY_SEPARATOR.'comment/add.php' ?>
            </section>
          	<div class="clearfix"></div>            
          </div>
        </div>
      </article>
    </div>
    <?php endforeach ?>
 <div id="copy_template" class="col-xs-12 col-sm-6 col-md-4 col-lg-3" style="display:none">
      <article class="community_contents">
        <div class="sl_content_main">
          <div id="article00" data-ride="carousel00">
            <div class="carousel-inner" role="listbox">
              <!-- Wrapper for slides -->
              <div class="item">
              	<img class="img-responsive" src="" alt="" />
            	</div>
            </div>            	
            <a class="left carousel-control" href="#article00" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Previous') ?></span> </a> <a class="right carousel-control" href="#article00" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Next') ?></span> </a>

          </div>
          <div class="sl_content_content">
            <h3 itemprop="name" class="sl_content_title"><?php echo anchor('','',array('target'=>'_blank','class'=>'a_link'))  ?></h3>
						<div class="sl_content_text" itemprop="text">
							<?php echo anchor('','',array('target'=>'_blank','class'=>'a_link'))  ?>
							<div class="content_text_layer" style="display:none"></div>
							<span class="link_more"><?php echo _('link_more') ?></span>
						</div>
            <div class="create_info">
            	<img style="float:left;display:none" src="" alt="sample title" width="50" height="50" class="img-circle" />
              <div style="float:left;margin-left:10px">
                <p style="display:none"></p>
                <p></p>
              </div>
            </div>
             <?php if($this->session->userdata('admin')): ?>            
            <div class="btn-group admin-btn" role="group">
              <div>
              	<?php echo anchor('','<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>'._('delete_link'),array('class'=>"btn btn-default")) ?>
              	<?php echo anchor('','<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'._('edit_link'),array('class'=>"btn btn-default"))	?>
              </div>
            </div>
             <?php endif ?>            
            <div style="border-top:1px solid #ccc;float:left;width:100%;padding:10px 0 0">
              <div class="btn-group" role="group" aria-label="..." style="float:left;margin-right:20px">
                <form class="recommend_form" action="/communities/recommend" method="post">
                  <input type="hidden" name="id" value="" />
                  <button type="submit" value="" class="btn btn-default" title="<?php echo _('recommend') ?>"> <span class="glyphicon glyphicon-heart"></span> <span class="recommend_count"></span> </button>
                  <button type="button" class="btn btn-default btn-share" title="<?php echo _('share') ?>"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-share-alt"></span></button>
                </form>
              </div>
              <div class="btn-group" role="group" aria-label="..." style="float:right">
                <button class="btn btn-default dropdown-toggle comment_btn" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" title="<?php echo _('comment') ?>"> 의견 <span class="comment_count"></span> <span class="caret"></span> </button>
              </div>
            </div>
            <section class="comments" style="display:none">
            	
            </section>
          	<div class="clearfix"></div>            
          </div>
        </div>
      </article>
    </div>  	    
    <?php else: ?>
    <article> <?php echo _('no_data') ?> </article>
    <?php endif ?>
    
  </div>
</section>
