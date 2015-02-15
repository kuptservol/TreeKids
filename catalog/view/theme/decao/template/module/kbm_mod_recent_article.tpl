<div id="kbm-recent-article-<?php echo $module; ?>" class="kbm-recent-article">
    <div class="box kuler-module container">
	    <?php if ($show_title) { ?>
        <div class="box-heading">
            <span><?php echo $title; ?></span>
            <div class="extra-heading"></div>
        </div>
	    <?php } ?>
        <div class="box-content">
            <ul class="articles row">
	            <?php foreach ($articles as $article) { ?>
                <li class="col-sm-6 col-md-4">
                    <div>
                        <?php if ($product_featured_image) { ?>
                            <div class="image"><img src="<?php echo $article['featured_image_thumb']; ?>" class="avatar" alt="<?php echo $article['name']; ?>" /></div>
                        <?php } ?>
                        <div class="article-details">
                            <a href="<?php echo $article['link']; ?>" class="article-title"><?php echo $article['name']; ?></a>
                            <?php if ($product_description) { ?>
                            <p><?php echo $article['description']; ?></p>
                            <?php } ?>
                        </div>
                        <div class="article-info">
                      <span class="date"><?php echo $article['date_added_formatted']; ?></span>
                        </div>
                    </div>
                </li>
	            <?php } ?>
            </ul>
        </div>
    </div>
</div>