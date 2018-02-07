
function love.load()
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--SETTINGS:

	defaultAnimationDelayForSprites = 20 --if animation delay is not specified in img tables

	screenResolution = {800, 600}

	textFont = love.graphics.newFont( "OpenDyslexic3-Regular.ttf", 18)

	fullScreen = false

	backgroundColor = {0,0,0}

	windowTitle = "A new Amy game"

	cursorHotspots = {
		normal = {x = 0, y = 0},
		highlight = {x = 0, y = 0},
		click = {x = 0, y = 0},
		}
	cursorAnimationDelay = {
		normal = { 10, 100, 10, 10},
		highlight = { 10, 10, 10, 10},
		click = { 10, 10, 10, 10},
	}

	startingFadeInTime = 100
	startingFadeInColor = {0,0,0}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local starterPack = require "0modules0.starterpack" starterPack()
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--if you want to have text displayed, print == "" to not display it
--folder - the name of the animation's folder in the sprites folder
--static - whether the image appears not animated, can be true or false
--explode, you can add the hotspots that upon being clicked start the animation
--if explode = {} then it never animates upon hotspot clicked
--if explode = {1, 2, 3, etc.} it animates when hotspot 1,2 or 3 is clicked

--clear = true with music when you want all the previous music to be silenced
--when this music track starts to play

--unlike animations, the sfx explode happens for different animation
--endings, not new slides!!!

--[[
--slide template below, copy it whenever you want to add a slide,
--just change the [1] to a slide number that you don't have otherwise it'll
--overwrite an already existing file!
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--copy everything below this
--------------------------------------------------------------------------------
local _ = {---------------------------------------------------------------------
  ------------------------------------------------------------------------------
	cutsceneTimer = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
		turnOnTimer = true,
    frameCount = 100,
    nextSlide = 2,
    fadeOutTimer = 0,
    fadeOutColor = {0,0,0},
	------------------------------------------------------------------------------
	},
	------------------------------------------------------------------------------
	hotspot = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
		[1] = {

			x1 = 0,
			y1 = 0,
			x2 = 800,
			y2 = 300,
			nextSlide = 2,
      fadeOutTimer = 120,
      fadeOutColor = {255,255,255},
			onlyActivatesOnImgClick = 0,
		},
		[2] = {

			x1 = 0,
			y1 = 300,
			x2 = 800,
			y2 = 600,
			nextSlide = 2,
      fadeOutTimer = 120,
      fadeOutColor = {0,0,0},
			onlyActivatesOnImgClick = 0,
		},
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
	},
	------------------------------------------------------------------------------
	img = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
		[1] = {

			x = 300,
			y = 400,
			folder = "exampleAnimation",
			static = true,
			repeating = false,
			explode = { 1 },
      animationDelay = {10, 10, 10, 100, 50, 10},
		},
	------------------------------------------------------------------------------
	},
  ------------------------------------------------------------------------------
	text = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
		[1] = {

			x = 0,
			y = 0,
			width = 100,
			color = {255,255,255,255},
			print = "slide number 1",

		},
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
	},
	------------------------------------------------------------------------------
	sfx = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------
		[1] = {

			name = "exampleSound",
			explode = { 1 },

		},
	------------------------------------------------------------------------------
	},
	------------------------------------------------------------------------------
	music = {
	------------------------------------------------------------------------------
	------------------------------------------------------------------------------

		[1] = {

			name = "exampleTrack",
			repeating = true,
			clear = false,
			startFirstTimeOnly = true
		},

	------------------------------------------------------------------------------
	},
	------------------------------------------------------------------------------

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
return _------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
----------------------till the line above!--------------------------------------
]]

------copy the code above into the slides' folder files-------------------------
------each slide is marked by a number 1.lua, 2.lua, 3.lua, etc.----------------








--------------------------------------------------------------------------------
	loadSlides()
--------------------------------------------------------------------------------
end


function love.update(dt)
	general(dt)
end

function love.draw()
	drawStuff()
end
