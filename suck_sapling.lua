turtle.select(1)
while true do
    b,s = turtle.suck(64)
    if b then
        cell = turtle.getItemDetail(1, true)
        if cell.tags["minecraft:saplings"] then
            turtle.dropUp()
        else
            turtle.turnRight() 
            turtle.drop(64)
            turtle.turnLeft()
        end
    end
    os.sleep(10)
end