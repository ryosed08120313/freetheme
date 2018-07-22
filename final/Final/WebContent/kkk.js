/**
 *jQuery(function($) {
  $("#result td").filter(function() {
    return parseInt($(this).text()) < 0;
  }).addClass("minus");
});
 */

function o($) {
  $("#result td").filter(function() {
    return parseInt($(this).text()) < 0;
  }).addClass("minus");
};

function ohayou() {
	  window.alert("Hello!");
	}