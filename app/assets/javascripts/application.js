// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require_tree ./bootstrap
//= require_tree ./jquery
//= require lumen/loader
//= require lumen/bootswatch
//= require_directory ./
//= require zeroclipboard
//= stub jquery.remodal.min.js
//= stub landing/bootstrap.js
//= stub landing/bootstrap.min.js
//= stub landing/cbpAnimatedHeader.js
//= stub landing/classie.js
//= stub landing/inspinia.js
//= stub landing/pace.min.js

$(document).ready(function() {
  var clip = new ZeroClipboard($(".my_clip_button"))
});