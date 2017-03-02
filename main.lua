function love.load()
    cat = love.graphics.newImage("resources/cat.png")
    meow = love.audio.newSource("resources/meow.mp3")
    scale = 2
    love.window.setMode(294 * scale, 270 * scale)
    love.window.setTitle("Love-Meow")
end

function love.draw() 
    love.graphics.draw(cat, 0, 0, 0, scale)

    if love.mouse.isDown(1) then
        love.audio.play(meow)
    end
end