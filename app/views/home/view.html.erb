<div id="content_view" class="article col-xs-12 col-sm-6 col-md-4 col-lg-4">
	<article class="community_contents">
		<div class="sl_content_main">
			<?php $index='_content'; ?>
			<?php if($data['content']['photo']['total']): ?>
				<div class="carousel slide" id="article_content" data-ride="carousel_content" data-interval="8000">
            <div class="carousel-inner" role="listbox">
              <?php foreach($data['content']['photo']['list'] as $photo_index=>$photo): ?>
              
              <!-- Wrapper for slides -->
              <div class="item<?php if(!$photo_index):?> active<?php endif ?>">
              	<img class="img-responsive" src="/uploads/communities/thumb_<?php echo $photo['file_name'] ?>" alt="<?php echo $data['content']['title'] ?>" />
              </div>
              <?php endforeach ?>
            </div>
            <?php if($data['content']['photo']['total']>1): ?>
            <a class="left carousel-control" href="#article_content" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Previous') ?></span> </a> <a class="right carousel-control" href="#article_content" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only"><?php echo _('Next') ?></span> </a>
            <?php endif ?>
          </div>
          <?php endif ?>
          <div class="sl_content_content">
            <h3 itemprop="name" class="sl_content_title"><?php echo $data['content']['title'] ?></h3>
						<div class="sl_content_text" itemprop="text">
							<div class="content_text_layer"><?php echo nl2br($data['content']['content']) ?></div>
						</div>
            <div class="create_info">
            	<img style="float:left;display:none" src="/uploads/users/thumb_<?php echo $data['content']['user_photo'] ?>" alt="<?php echo $data['content']['title'] ?>" width="50" height="50" class="img-circle" />
              <div style="float:left;margin-left:10px">
                <p style="display:none"><?php echo $data['content']['nickname'] ?></p>
                <p><?php echo $data['content']['created_at'] ?></p>
              </div>
            </div>
            <div class="btn-group" role="group" aria-label="...">
              <?php if($this->session->userdata('admin')): ?>
              <div style="margin-bottom:15px"> <?php echo anchor('/communities/confirm_delete/'.$data['content']['id'],'<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>'._('delete_link'),array('class'=>"btn btn-default")) ?> <?php echo anchor('/communities/edit/'.$data['content']['id'],'<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'._('edit_link'),array('class'=>"btn btn-default"))	?> </div>
              <?php endif ?>
            </div>
            <div style="border-top:1px solid #ccc;float:left;width:100%;padding:10px 0 0">
              <div class="btn-group" role="group" aria-label="..." style="float:left;margin-right:20px">
                <form class="recommend_form" action="/communities/recommend" method="post">
                  <input type="hidden" name="id" value="<?php echo $data['content']['id'] ?>" />
                  <button type="submit" value="" class="btn btn-default" title="<?php echo _('recommend') ?>"> <span class="glyphicon glyphicon-heart"></span> <span class="recommend_count"><?php echo $data['content']['recommend_count'] ?></span> </button>
                  <button type="button" class="btn btn-default btn-share" title="<?php echo _('share') ?>"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-share-alt"></span></button>
                </form>
              </div>
              <div class="btn-group" role="group" aria-label="..." style="float:right">
                <button class="btn btn-default dropdown-toggle comment_btn" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" title="<?php echo _('comment') ?>"> 의견 <span class="comment_count"><?php echo $data['content']['comment_count'] ?></span> <span class="caret"></span> </button>
              </div>
            </div>
            <section class="comments">
              <?php if($data['content']['comments']['total']): ?>
              <?php foreach($data['content']['comments']['list'] as $index=>$comment): ?>
              <?php include __DIR__.DIRECTORY_SEPARATOR.'comment/index.php' ?>
              <?php endforeach ?>
              <?php endif ?>
              <?php $data['content']['id']=$data['content']['id'] ?>
              <?php include __DIR__.DIRECTORY_SEPARATOR.'comment/add.php' ?>
            </section>
  				<div class="clearfix">&nbsp;</div>
			</div>		
		</div>
	</article>
</div>