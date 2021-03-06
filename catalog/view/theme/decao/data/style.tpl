/* Layout */
{{#is layout_style 'boxed'}}
  @media only screen and (min-width: 100em) {
      .boxed #container {
        max-width: calc({{maximum_width}} + 30px);
      }
      .container{
        max-width:  {{maximum_width}};
      }
    }
{{/is}}
/* Custom Notification */
{{#if show_custom_notification}}
#notification {
	top: 80px;
	z-index: 9999;
	opacity: 0;
	right: 20px;
	width: 300px;
	position: fixed;
	visibility: hidden;
	transition: 0.3s ease-in-out;
	-moz-transition: 0.3s ease-in-out;
	-webkit-transition: 0.3s ease-in-out;
}

#notification.active {
	top: 20px;
	opacity: 1;
	visibility: visible;
}
{{/if}}

/* Scroll up */
{{#if enable_scroll_up}}
.scrollup {
	z-index: 2;
	position: fixed;
	right: 50px;
}
{{/if}}

/* Style Customization */
{{#if body_container_bg_color}}
  #container{
    background-color: {{body_container_bg_color}};
  }
{{/if}}

{{#if body_link_color}}
    a,a:visited,
    .mainmenu > li a,
    #top-bar a{
        color: {{body_link_color}};
    }
{{/if}}


{{#if body_link_hover_color}}
  .mainmenu > li:hover{
    border-color: {{body_link_hover_color}};
  }
  .product-grid .name a:hover,
  .product-filter .display a:hover,
  .product-filter .display span:hover,
  .product-filter .product-compare a:hover,
  #megamenu .mainmenu > li > div .item > a:hover,
  #megamenu .subcat li a:hover,
  .breadcrumb li a:hover {
    color: {{body_link_hover_color}};
  }
  .button:hover,
  a.button:hover,
  #header .checkout a:hover,
  .cart-total + .buttons a:hover,
  .cart-total + .buttons a:hover,
  #header #cart .heading #cart-product-total,
  .scrollup,
  .newsletter button:hover{
    background-color: {{body_link_hover_color}};
  }

  .sale{
    background-color: {{body_link_hover_color}};
  }
  .sale:after{
    border-color: {{body_link_hover_color}} transparent transparent transparent;
  }
{{/if}}
{{#if body_bg_image.path}}
  body {
      background-image: url({{body_bg_image.path}});
      {{#if body_bg_image.repeat}}
        background-repeat: {{body_bg_image.repeat}};
      {{/if}}
      {{#if body_bg_image.position}}
        background-position: {{body_bg_image.position}};
      {{/if}}
      {{#if body_bg_image.attachment}}
        background-attachment: {{body_bg_image.attachment}};
      {{/if}}
  }
{{/if}}
{{#if body_font}}
  body {
    {{#if body_font.font_family}}
      font-family: {{_fontFamily body_font.font_family}};
    {{/if}}
    {{#if body_font.font_size}}
      font-size: {{body_font.font_size}};
    {{/if}}
    {{#if body_font.font_weight}}
      font-weight: {{body_font.font_weight}};
    {{/if}}
    {{#if body_bg_color}}
        background-color: {{body_bg_color}};
    {{/if}}
    {{#if body_pattern}}
      background-image: url({{body_pattern}});
    {{/if}}
    {{#if body_text_color}}
      color: {{body_text_color}};
    {{/if}}
  }
  .kuler-tabs,.kuler-slides,
  #header .checkout a,
  .cart-total + .buttons a,
  .ui-widget{
  {{#if body_font.font_family}}
    font-family: {{_fontFamily body_font.font_family}};
  {{/if}}
}
{{/if}}

{{#if heading_font}}
h1,h2,h3,h4,h5,h6,.box-heading {
  {{#if heading_font.font_family}}
    font-family: {{_fontFamily heading_font.font_family}};
  {{/if}}
  {{#if heading_font.font_style}}
    font-style: {{heading_font.font_style}};
  {{/if}}
  {{#if heading_font.font_weight}}
    font-weight: {{heading_font.font_weight}};
  {{/if}}
  {{#if heading_font.text_transform}}
    text-transform:{{heading_font.text_transform}};
  {{/if}}
}
{{/if}}


{{#if heading_color}}
  h1,h2,h3,h4,h5,h6,.box-heading {
    color: {{heading_color}};
  }
  .bottom h3:after,
  #footer h3:after,
  .box-heading:after,
  .kuler-slides .box-heading:after{
    background-color: {{heading_color}};
  }
{{/if}}

{{#if topbar_background_color}}
  #top-bar{
  {{#if topbar_background_color}}
    background-color: {{topbar_background_color}};
  {{/if}}
  }
{{/if}}

{{#if topbar_link_color}}
  #top-bar a,
  #top-bar .extra .dropdown-toggle,
#top-bar .heading h4 {
    {{#if topbar_link_color}}
      color: {{topbar_link_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_link_hover_color}}
  #top-bar a:hover{
    {{#if topbar_link_hover_color}}
      color: {{topbar_link_hover_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_text_color}}
  #top-bar{
    {{#if topbar_text_color}}
      color: {{topbar_text_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_border_color}}
  #top-bar,
  #top-bar .extra form{
    {{#if topbar_border_color}}
      border-color: {{topbar_border_color}};
    {{/if}}
  }
{{/if}}


#header{
    {{#if header_pattern}}
      background-image: url({{header_pattern}});
    {{/if}}
}
{{#if header_background_image.path}}
  #header {
      background-image: url({{header_background_image.path}});
      {{#if header_background_image.repeat}}
        background-repeat: {{header_background_image.repeat}};
      {{/if}}
      {{#if header_background_image.position}}
        background-position: {{header_background_image.position}};
      {{/if}}
      {{#if header_background_image.attachment}}
        background-attachment: {{header_background_image.attachment}};
      {{/if}}
  }
{{/if}}
{{#if header_background_color}}
  #header{
  {{#if header_background_color}}
    background-color: {{header_background_color}};
  {{/if}}
  }
{{/if}}
{{#if header_search_border_color}}
  #header #search input{
    border-color: {{header_search_border_color}};
  }
{{/if}}
{{#if header_search_bg_color}}
  #header #search input{
    background-color: {{header_search_bg_color}};
  }
{{/if}}
{{#if header_mini_cart_heading_color}}
#top-bar #cart .heading h4,
#header #cart .heading h4 {
color: {{header_mini_cart_heading_color}};
}
{{/if}}

{{#if header_mini_cart_heading_icon_color}}
#top-bar #cart .heading i,
#header #cart .heading i {
color: {{header_mini_cart_heading_icon_color}};
}
{{/if}}

{{#if header_mini_cart_color}}
#top-bar #cart .content .title,
#header #cart .content .title,
#top-bar #cart .content .title h4,
#header #cart .content .title h4 {
        color: {{header_mini_cart_color}};
    }
{{/if}}

{{#if header_mini_cart_title_bg_color}}
#top-bar #cart .content .title,
#header #cart .content .title {
background-color: {{header_mini_cart_title_bg_color}};
}
{{/if}}

#top-bar #cart .content .title i,
#header #cart .content .title i {
{{#if header_mini_cart_icon_color}}
color: {{header_mini_cart_icon_color}};
{{/if}}
}

#top-bar #cart .content > .container,
#header #cart .content > .container {
    {{#if header_mini_cart_bg_color}}
        background-color: {{header_mini_cart_bg_color}};
    {{/if}}
}

#topbar #cart #cart-total:before, #top-bar #cart #cart-total:before{
    {{#if header_mini_cart_icon_bg_color}}
      background-color: {{header_mini_cart_icon_bg_color}};
    {{/if}}
    {{#if header_mini_cart_icon_color}}
      color: {{header_mini_cart_icon_color}};
    {{/if}}
}

{{#if footer_background_color}}
#footer,#powered,.social-newsletter,.bottom{
  {{#if footer_background_color}}
    background-color: {{footer_background_color}};
  {{/if}}
}
{{/if}}

.social-newsletter .container,#footer,#powered{
    {{#if footer_border_color}}
      border-color: {{footer_border_color}};
    {{/if}}
}

#footer,#powered, #powered a,.social-newsletter,.bottom{
    {{#if footer_pattern}}
      background-image: url({{footer_pattern}});
    {{/if}}
    {{#if footer_text_color}}
      color: {{footer_text_color}};
    {{/if}}
}

{{#if footer_background_image.path}}
  #footer,#powered,.social-newsletter,.bottom {
  background-image: url({{footer_background_image.path}});
  {{#if footer_background_image.repeat}}
    background-repeat: {{footer_background_image.repeat}};
  {{/if}}
  {{#if footer_background_image.position}}
    background-position: {{footer_background_image.position}};
  {{/if}}
  {{#if footer_background_image.attachment}}
    background-attachment: {{footer_background_image.attachment}};
  {{/if}}
  }
{{/if}}

{{#if footer_heading_color}}
  #footer h3,#powered h3,.bottom h3{
    {{#if footer_heading_color}}
      color: {{footer_heading_color}};
    {{/if}}
  }
  .bottom h3:after,
  #footer h3:after{
    background-color: {{footer_heading_color}};
  }
{{/if}}

{{#if footer_link_color}}
  #footer a {
    {{#if footer_link_color}}
      color: {{footer_link_color}};
    {{/if}}
  }
{{/if}}

{{#if footer_link_hover_color}}
  #footer a:hover,#powered a:hover{
    {{#if footer_link_hover_color}}
      color: {{footer_link_hover_color}};
    {{/if}}
  }
  #footer .contact li:hover{
    {{#if footer_link_hover_color}}
      color: {{footer_link_hover_color}};
    {{/if}}
  }

  .newsletter button:hover{
    {{#if footer_link_hover_color}}
      background-color: {{footer_link_hover_color}};
    {{/if}}
  }
{{/if}}


{{#if social_newsletter_bg_color}}
  .social-newsletter{
    background: {{social_newsletter_bg_color}};
  }
{{/if}}

{{#if social_icon_bg}}
  .social a:before{
    background-color: {{social_icon_bg}};
  }
{{/if}}
{{#if social_icon_color}}
  .social a:before{
    color: {{social_icon_color}};
  }
{{/if}}
.social a:hover:before{
    {{#if social_icon_hover_color}}
      color: {{social_icon_hover_color}};
    {{/if}}
}
.social a:hover {
{{#if social_icon_hover_bg}}
background-color: {{social_icon_hover_bg}};
{{/if}}
}

{{#if contact_icon_bg}}
  .contact li:before,
  .feature2 ul li:before{
    background-color: {{contact_icon_bg}};
  }
{{/if}}
{{#if contact_icon_color}}
  .contact li:before,
  .feature2 ul li:before{
    color: {{contact_icon_color}};
  }
{{/if}}
{{#if contact_icon_hover_bg}}
  .contact li:hover:before,
  .feature2 ul li:hover:before{
    background-color: {{contact_icon_hover_bg}};
  }
{{/if}}


.navigation{
{{#if menu_bg_color}}
  background-color: {{menu_bg_color}};
{{/if}}
{{#if menu_border_color}}
  border-color: {{menu_border_color}};
{{/if}}
}

.skin3 #header .row > .wrapper{
	{{#if menu_bg_color}}
		background-color: {{menu_bg_color}};
	{{/if}}
}

{{#if menu_item_hover_bg_color}}
.mainmenu > li:hover{
background-color: {{menu_item_hover_bg_color}};
}
{{/if}}

{{#if menu_item_hover_color}}
.mainmenu > li:hover > a,
.mainmenu > li:hover{
    color: {{menu_item_hover_color}};
}
{{/if}}

{{#if menu_font}}
#menu, #megamenu {
	{{#if menu_font.font_family}}
		font-family: {{_fontFamily menu_font.font_family}};
	{{/if}}
	{{#if menu_font.font_weight}}
		font-weight: {{_fontFamily menu_font.font_weight}};
	{{/if}}
	{{#if menu_font.font_style}}
		font-style: {{_fontFamily menu_font.font_style}};
	{{/if}}
	{{#if menu_font.text_transform}}
		text-transform: {{_fontFamily menu_font.text_transform}};
	{{/if}}
}
{{/if}}

.mainmenu > li > a {
	{{#if menu_item_color}}
	color: {{menu_item_color}};
	{{/if}}
	{{#if menu_font.font_size}}
		font-size: {{_fontFamily menu_font.font_size}};
	{{/if}}
}

{{#if product_price_color}}
  .product-grid .price-fixed{
    color: {{product_price_color}};
  }
{{/if}}
{{#if product_old_price_color}}
  .product-grid .price-old{
    color: {{product_old_price_color}};
  }
{{/if}}
{{#if product_name_color}}
  .product-grid .name a{
    color: {{product_name_color}};
  }
{{/if}}

{{#if product_sale_color}}
.sale{
    background-color: {{product_sale_color}};
}
.sale:after{
    border-color: {{product_sale_color}} transparent transparent transparent;
}
{{/if}}
{{#if product_sale_text_color}}
  .sale{
    color: {{product_sale_text_color}};
  }
{{/if}}
.product-grid .details > div,
.product-list .details > div {
    {{#if product_buttons_bg_color}}
      background-color: {{product_buttons_bg_color}};
    {{/if}}
}
.product-grid .details > div a:before,
.product-list .details > div a:before {
{{#if product_buttons_color}}
color: {{product_buttons_color}};
{{/if}}
}

.product-grid > div .details > div:hover,
.product-list > div .details > div:hover {
    {{#if product_buttons_bg_hover_color}}
      background-color: {{product_buttons_bg_hover_color}};
    {{/if}}
}
.product-grid > div .details > div:hover a:before {
{{#if product_buttons_hover_color}}
color: {{product_buttons_hover_color}};
{{/if}}
}
.product-grid .details .cart,
.product-list .details .cart {
    {{#if product_cart_bg_color}}
      background-color: {{product_cart_bg_color}};
    {{/if}}
}
.product-grid .details .cart a:before,
.product-grid .details .cart span,
.product-list .details .cart a:before,
.product-list .details .cart span
{
    {{#if product_cart_color}}
      color: {{product_cart_color}};
    {{/if}}
}
.product-grid > div .details > .cart:hover {
    {{#if product_cart_hover_bg_color}}
      background-color: {{product_cart_hover_bg_color}};
    {{/if}}
}
.product-grid > div .details > .cart:hover a:before,
.product-grid .cart:hover span {
    {{#if product_cart_hover_color}}
      color: {{product_cart_hover_color}};
    {{/if}}
}

button, .button, a.button, #header .checkout a,.read-more{
    {{#if button_color}}
        color: {{button_color}};
    {{/if}}
    {{#if button_border_color}}
        border-color: {{button_border_color}};
    {{/if}}
    {{#if button_background_color}}
      background-color: {{button_background_color}};
    {{/if}}
}
.jcarousel-skin-opencart .jcarousel-prev:before,
.jcarousel-skin-opencart .jcarousel-next:before{
    {{#if kuler_slides_buttons_color}}
      color: {{kuler_slides_buttons_color}};
    {{/if}}
    {{#if kuler_slides_buttons_bg_color}}
      background-color: {{kuler_slides_buttons_bg_color}};
    {{/if}}
}
.jcarousel-skin-opencart .jcarousel-prev:hover:before,
.jcarousel-skin-opencart .jcarousel-next:hover:before{
    {{#if kuler_slides_buttons_hover_color}}
      color: {{kuler_slides_buttons_hover_color}};
    {{/if}}
    {{#if kuler_slides_buttons_bg_hover_color}}
      background-color: {{kuler_slides_buttons_bg_hover_color}};
    {{/if}}
}
button, .button:hover, a.button:hover, #header .checkout a:hover,.read-more:hover{
    {{#if button_hover_background}}
      background-color: {{button_hover_background}};
    {{/if}}
    {{#if button_hover_color}}
      color: {{button_hover_color}};
    {{/if}}
    {{#if button_hover_border_color}}
      border-color: {{button_hover_border_color}};
    {{/if}}
}
