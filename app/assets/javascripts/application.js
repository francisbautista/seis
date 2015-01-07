// Author: Pivotal Solutions
// Organization: St. Edward Integrated School
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(document).ready ->

# Set sections to fill height
resize_sections()

# Resize sections on window resize
jQuery(window).resize ->
resize_sections()
return

return

$ ->
$("button.page-scroll").bind "click", (event) ->
$anchor = $(this)
$("html, body").stop().animate
scrollTop: $($anchor.attr("href")).offset().top
, 1000, "easeOutQuart"
event.preventDefault()
return

return


resize_sections = ->
window_height = jQuery(window).height()
jQuery("[data-autoheight=\"true\"]").css "min-height", jQuery(window).height()
jQuery("div.vspacer").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.10)
jQuery(this).css "height", spacer_height
return

window_height = jQuery(window).height()
jQuery("[data-autoheight=\"true\"]").css "min-height", jQuery(window).height()
jQuery("div.vspacerx").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.05)
jQuery(this).css "height", spacer_height
return

window_height = jQuery(window).height()
jQuery("[data-autoheight=\"true\"]").css "min-height", jQuery(window).height()
jQuery("div.vspacer1").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.15)
jQuery(this).css "height", spacer_height
return

window_height = jQuery(window).height()
jQuery("[data-autoheight=\"true\"]").css "min-height", jQuery(window).height()
jQuery("div.vspacer6").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.20)
jQuery(this).css "height", spacer_height
return

jQuery("div.vspacer2").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.30)
jQuery(this).css "height", spacer_height
return

jQuery("div.vspacer3").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.40)
jQuery(this).css "height", spacer_height
return

jQuery("div.vspacer4").each ->
parent_height = jQuery(this).parents("section").height()
spacer_height = Math.round(parent_height * 0.60)
jQuery(this).css "height", spacer_height
return

return
