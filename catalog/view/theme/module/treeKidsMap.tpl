<?php echo $header; ?>

<div class="breadcrumb">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-6 hidden-xs">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </div>
    </div>
  </div>
</div>

<?php echo $column_left; ?>
<div class="container">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-md-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-md-9'; ?>
    <?php } else { ?>
      <?php $class = 'col-md-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <div class="content">
	  <script type="text/javascript" charset="utf-8" src="//api-maps.yandex.ru/services/constructor/1.0/js/?sid=pyDjJk15Yv6B1b9xT5PMwM1KdgRUhxrj&width=600&height=450"></script>
      </div>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>

<?php echo $footer; ?> 