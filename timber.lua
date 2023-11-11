e, d = turtle.inspect()
if e then
    if d.tags["minecraft:logs"] then
        turtle.dig();
        turtle.forward();
        e, d = turtle.inspectUp()
        if e then
            while d.tags["minecraft:logs"] do
                turtle.digUp()
                turtle.up()
                e, d = turtle.inspectUp()
            end
        end
        while not turtle.detectDown() do
            turtle.down()
        end
        turtle.back()  
   end     
end
