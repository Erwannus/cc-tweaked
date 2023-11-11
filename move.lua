local function move( order )
    print("Fuel level : " .. turtle.getFuelLevel())
    for i,v in ipairs(order) do
        print(v)
        if(v=="t_r") then turtle.turnRight() 
        elseif(v=="t_l") then turtle.turnLeft() 
        elseif(v=="m_f") then turtle.forward() 
        elseif(v=="m_b") then turtle.back()
        else print("error move") end
    end
end

return { move = move}
