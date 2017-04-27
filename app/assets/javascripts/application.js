// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {
    // search
    $('#1').hide();
    $('#search-submit-btn').mouseover(function() {
        $('#1').addClass("only-for-search-input");
        $('#1').show();
    });
    // footer
    $("footer").removeClass("fixed-bottom");
    var contentHeight = document.body.scrollHeight; //网页正文全文高度
    var winHeight = window.screen.height; //可视窗口高度，不包括浏览器顶部工具栏
    if (contentHeight < winHeight) {
        $("footer").addClass("fixed-bottom");
    };
    // $(this).css("background-color", "yellow");
    $(".tabs-style-ul").children('li').each(function() {
      $(this).click(function(){

        $('.tab-current').children().removeClass('icon-box');
        $('.tab-current').children().addClass('icon-display');
        $('.tab-current').removeClass();


        $(this).addClass('tab-current');
        $(this).children().removeClass('icon-display');
        $(this).children().addClass('icon-box');

        var href = $(this).children().attr('href');
        var str = "'"+ href + "'";
        var resid = str.replace("#", "");
        // if (window.console) {
            // console.log(resid);
        // }
        // console.log(this);
        var  id = 'section-bar-2';
        $('.content-current').removeClass();
        document.getElementById(eval(resid)).className='content-current';


      })
    })
});
