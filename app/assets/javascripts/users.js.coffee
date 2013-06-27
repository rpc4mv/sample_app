# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



$(document).ready ->
 
  maxCharacters = 140;

  colorCount = (element) ->
    count = $("#char-count")
    characters = $(element).val().length
    if characters > maxCharacters
      count.addClass "over"
    else
      count.removeClass "over"
    count.text maxCharacters - characters
 
  colorCount("textarea")

  $("textarea").bind "keyup keydown", ->
    colorCount($(this)) 
