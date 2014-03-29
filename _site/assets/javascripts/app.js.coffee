#= require vendor/jquery
#= require vendor/modernizr
#
#= require vendor/phaser.min

# put your game stuff here
#
Game =
  display: null
  init: ->
    console.log 'Hello world'

    preload = ->
      console.log 'loading assets'
      game.load.image('sky', 'assets/images/sky.png')
      game.load.image('ground', 'assets/images/platform.png')
      game.load.image('star', 'assets/images/star.png')
      game.load.spritesheet('dude', 'assets/images/dude.png', 32, 48)
      console.log 'loaded assets'

    create = ->
      console.log 'create'

      game.add.sprite(0, 0, 'star')

    update = ->
      console.log 'update'

    game = new Phaser.Game(640, 480, Phaser.AUTO, "",
      preload: preload
      create: create
      update: update
    )

Game.init()
