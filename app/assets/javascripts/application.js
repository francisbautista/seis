// Author: Pivotal Solutions
// Organization: St. Edward Integrated School
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(document).ready(function(){
    // Set sections to fill height
    resize_sections();

    // Resize sections on window resize
    jQuery(window).resize(function() {
        resize_sections();
    });
});

function resize_sections()
{
    var window_height = jQuery(window).height();
    jQuery('[data-autoheight="true"]').css('min-height', jQuery(window).height());

    jQuery('div.vspacer').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.25);

        jQuery(this).css('height', spacer_height);
    });

    var window_height = jQuery(window).height();
    jQuery('[data-autoheight="true"]').css('min-height', jQuery(window).height());

    jQuery('div.vspacer1').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.10);

        jQuery(this).css('height', spacer_height);
    });


    var window_height = jQuery(window).height();
    jQuery('[data-autoheight="true"]').css('min-height', jQuery(window).height());

    jQuery('div.vspacer6').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.12);

        jQuery(this).css('height', spacer_height);
    });




    jQuery('div.vspacer2').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.33);

        jQuery(this).css('height', spacer_height);
    });

    jQuery('div.vspacer3').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.20);

        jQuery(this).css('height', spacer_height);
    });

    jQuery('div.vspacer4').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.70);

        jQuery(this).css('height', spacer_height);
    });

    jQuery('div.vspacerx').each(function() {
        var parent_height = jQuery(this).parents('section').height();
        var spacer_height = Math.round(parent_height * 0.05);

        jQuery(this).css('height', spacer_height);
    });


}
