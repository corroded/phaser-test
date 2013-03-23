#= require vendor/jquery
#= require vendor/rot
#= require_tree ./models
#

# put your game stuff here
#
Game =
  display: null
  init: ->
    @display = new ROT.Display()
    $('body').append @display.getContainer()


Game.init()
