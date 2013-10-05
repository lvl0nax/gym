// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require bootstrap
//= require_tree .

function showsem(id)
{
  var tmp = ".body" + id;
  $.ajax({
    type: "GET",
    url: "/seminars/" + id,
    success: function(data, status, jqXHR){
      $(tmp).html("<br/><br/><p>ПОДРОБНАЯ ИНФОРМАЦИЯ</p>" + data + "<br/><br/>"). css("display", "block");
      $(".more" + id).css("display", " none");
      $(".close" + id).css("display", " block");
    }
  });
}

function closesem(id){
  var tmp = ".body" + id;
  $(tmp).html("").css("display", " none");
  $(".close" + id).css("display", " none");
  $(".more" + id).css("display", " block");
}

function showinst(id, path)
{
  var tmp = ".body" + id;
  $.ajax({
    type: "GET",
    url: "/instructors/" + id,
    success: function(data, status, jqXHR){
      $(tmp).html(data + "<br/><br/>"). css("display", "block");
      $(".more" + id).css("display", " none");
      $(".close" + id).css("display", " block");
      $(".image_" + id).attr('src', path);
    }
  });
}

function closeinst(id, path){
  var tmp = ".body" + id;
  $(tmp).html("").css("display", " none");
  $(".close" + id).css("display", " none");
  $(".more" + id).css("display", " block");
  $(".image_" + id).attr('src', path);
}

function showart(id, path)
{
  var tmp = ".body" + id;
  $.ajax({
    type: "GET",
    url: "/articles/" + id,
    success: function(data, status, jqXHR){
      $(tmp).html(data + "<br/><br/>"). css("display", "block");
      $(".more" + id).css("display", " none");
      $(".close" + id).css("display", " block");
      $(".image_" + id).attr('src', path);
    }
  });
}

function closeart(id, path){
  var tmp = ".body" + id;
  $(tmp).html("").css("display", " none");
  $(".close" + id).css("display", " none");
  $(".more" + id).css("display", " block");
  $(".image_" + id).attr('src', path);
}

function smnrtgl1(){
  $("#close1").toggle();
  $(".semshow1").toggle();
$(".semhide1").toggle();
}
function smnrtgl2(){
  $("#close2").toggle();
  $(".semshow2").toggle();
  $(".semhide2").toggle();
}
function smnrtgl3(){
  $("#close3").toggle();
  $(".semshow3").toggle();
  $(".semhide3").toggle();
}

function create_question(){
  $("#popup").html("").removeClass().addClass("request-call").load("/questions/new", function(){});
  $(".wrapper").addClass("disable");
}

function closepopup(){
  $("#close").live('click' ,function() {
    $(".wrapper").removeClass("disable");
    $('#popup').html("").removeClass();
  });
}

function make_answer(id){
  $("#popup").html("").removeClass().addClass("request-call").load("/answers/new?question_id="+id, function(){

  });
  $(".wrapper").addClass("disable");
}
