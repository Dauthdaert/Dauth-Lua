function love.load()
    text = "Type away! -- "
end

function love.keypressed(key, unicode)
    -- ignore non-printable characters (see http://www.ascii-code.com/)
    if unicode > 31 and unicode < 127 then
        text = text .. string.char(unicode)
    end
    if key == "escape" then
    	love.event.push("quit")
    end
end

function love.draw()
    love.graphics.printf(text, 0, 0, 800)
    love.graphics.print("Escape to quit", 0, 587)
end