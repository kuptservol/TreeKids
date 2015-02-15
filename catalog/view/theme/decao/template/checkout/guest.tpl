<div class="container register-page">
    <div class="row">
        <div id="content" class="col-xs-12">
            <div class="row">
                <div class="col-md-6 col-sm-12 content">
                    <h2 class="row-heading"><?php echo $text_your_details; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $entry_firstname; ?> <span class="required">*</span></td>
                            <td><input type="text" name="firstname" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
                            <td><input type="text" name="lastname" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_email; ?> <span class="required">*</span></td>
                            <td><input type="text" name="email" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_telephone; ?> <span class="required">*</span></td>
                            <td><input type="text" name="telephone" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_fax; ?></td>
                            <td><input type="text" name="fax" value="" class="large-field" /></td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-6 col-sm-12 content">
                    <h2 class="row-heading"><?php echo $text_your_address; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $entry_company; ?></td>
                            <td><input type="text" name="company" value="" class="large-field" /></td>
                        </tr>
                        <tr style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
                            <td><?php echo $entry_customer_group; ?></td>
                            <td>
                                <?php foreach ($customer_groups as $customer_group) { ?>
                                <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                <?php } else { ?>
                                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
                                <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                                <?php } ?>
                                <?php } ?>
                            </td>
                        </tr>
                        <tr id="company-id-display">
                            <td><?php echo $entry_company_id; ?><span id="company-id-required" class="required">*</span></td>
                            <td><input type="text" name="company_id" value="" class="large-field" /></td>
                        </tr>
                        <tr id="tax-id-display">
                            <td><?php echo $entry_tax_id; ?> <span id="tax-id-required" class="required">*</span></td>
                            <td><input type="text" name="tax_id" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
                            <td><input type="text" name="address_1" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_address_2; ?></td>
                            <td><input type="text" name="address_2" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_city; ?> <span class="required">*</span></td>
                            <td><input type="text" name="city" value="" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_postcode; ?> <span id="payment-postcode-required" class="required">*</span></td>
                            <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" /></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_country; ?> <span class="required">*</span></td>
                            <td>
                                <select name="country_id" class="large-field">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($countries as $country) { ?>
                                    <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_zone; ?> <span class="required">*</span></td>
                            <td><select name="zone_id" class="large-field">
                                </select></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="buttons">
                <div class="right">
                    <?php if ($shipping_required) { ?>
                    <label for="shipping"><?php echo $entry_shipping; ?></label>
                    <?php if ($shipping_address) { ?>
                    <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="shipping_address" value="1" id="shipping" />
                    <?php } ?>
                    <?php } ?>
                    <input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button" />
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
        var customer_group = [];

        <?php foreach ($customer_groups as $customer_group) { ?>
            customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
        <?php } ?>

        if (customer_group[this.value]) {
            if (customer_group[this.value]['company_id_display'] == '1') {
                $('#company-id-display').show();
            } else {
                $('#company-id-display').hide();
            }

            if (customer_group[this.value]['company_id_required'] == '1') {
                $('#company-id-required').show();
            } else {
                $('#company-id-required').hide();
            }

            if (customer_group[this.value]['tax_id_display'] == '1') {
                $('#tax-id-display').show();
            } else {
                $('#tax-id-display').hide();
            }

            if (customer_group[this.value]['tax_id_required'] == '1') {
                $('#tax-id-required').show();
            } else {
                $('#tax-id-required').hide();
            }
        }
    });

    $('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
    //--></script>
<script type="text/javascript"><!--
    $('#payment-address select[name=\'country_id\']').bind('change', function() {
        if (this.value == '') return;
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },
            complete: function() {
                $('.wait').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#payment-postcode-required').show();
                } else {
                    $('#payment-postcode-required').hide();
                }

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('#payment-address select[name=\'zone_id\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#payment-address select[name=\'country_id\']').trigger('change');
    //--></script>