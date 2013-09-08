function love.load()
	love.graphics.setBackgroundColor(0, 0, 0)
	math.randomseed (math.random(1, 1000))
	Win = 0
	WinNeeded = math.random(1, 10)
end

function love.update()
	if Win >= WinNeeded then
		Win = 0
		math.randomseed(os.time())
		WinNeeded = math.random(1, 10)
		WinDone = true
	end
	if Win < WinNeeded then
		WinDone = false
	end
end

function love.draw()
	love.graphics.print("" .. Win .. "", 400, 300, 0, 1, 1, 0, 0, 0, 0)
	if WinDone then
		love.graphics.print("You win", 400, 370, 0, 1, 1, 0, 0, 0, 0)
	end
end

function love.mousepressed(x, y, button)
	if button == "l" then
		Win = Win + math.random(1, 3)
	end
end

function love.keypressed(key)
	if key == " " then
		Win = Win + math.random(1, 3)
	end
end