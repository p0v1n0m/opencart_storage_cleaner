<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-success"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-cogs"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-settings" data-toggle="tab"><i class="fa fa-cog"></i> <?php echo $tab_settings; ?></a></li>
            <li><a href="#tab-help" data-toggle="tab"><i class="fa fa-comment"></i> <?php echo $tab_help; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-settings">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-pvnm_storage_cleaner_status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <div class="btn-group" data-toggle="buttons">
                    <?php if ($pvnm_storage_cleaner_status) { ?>
                    <label class="btn btn-info active"><input type="radio" name="pvnm_storage_cleaner_status" value="1" autocomplete="off" checked="checked"><?php echo $text_enabled; ?></label>
                    <label class="btn btn-info"><input type="radio" name="pvnm_storage_cleaner_status" value="0" autocomplete="off"><?php echo $text_disabled; ?></label>
                    <?php } else { ?>
                    <label class="btn btn-info"><input type="radio" name="pvnm_storage_cleaner_status" value="1" autocomplete="off"><?php echo $text_enabled; ?></label>
                    <label class="btn btn-info active"><input type="radio" name="pvnm_storage_cleaner_status" value="0" autocomplete="off" checked="checked"><?php echo $text_disabled; ?></label>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-help">
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $text_documentation; ?></label>
                <div class="col-sm-10"><a href="https://github.com/p0v1n0m/opencart_storage_cleaner" target="_blank" class="btn">https://github.com/p0v1n0m/opencart_storage_cleaner</a></div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $text_developer; ?></label>
                <div class="col-sm-10"><a href="mailto:p0v1n0m@gmail.com" class="btn">p0v1n0m@gmail.com</a></div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>