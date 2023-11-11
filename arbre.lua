local move = require("move")

--Block si il n'y a pas de sapling 
--devant la turtle.
local function can_timber()
    while true do
    local has_blk, data = turtle.inspect()
        if has_blk then
            if data.tags[ "minecraft:saplings" ] then
                print("sapling state : " .. data.state.stage)
            elseif data.tags["minecraft:logs"] then           
                print("arbre trouver")
                return true
            end
        else
            print("NO BLOCK IN FRONT")
        end
        os.sleep(5)
    end
end

local function timber()
    if can_timber() then
        os.run({}, "timber.lua")
    end
end

local function plante()
    print("plante")
    turtle.place()
end

while true do
    for i = 1, 3 do
        timber()
        plante()
        move.move({"t_l", "m_f", "m_f", "m_f", "m_f" , "m_f" , "m_f" ,"t_r"})
    end
    for i = 1, 3 do
        timber()
        plante()
        move.move({"t_r", "m_f", "m_f", "m_f", "m_f", "m_f", "m_f", "t_l"}) 
        end
end
