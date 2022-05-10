while true do
    --gui.pixel(190, 40,'yellow')
    --r,g,b = gui.getpixel(190, 40)
    --print(r,g,b)

    if left == 1 then
        r,g,b = gui.getpixel(150, 150)
        if r == 0 and g == 0 and b == 0 then
            left = 0
        end

        joypad.set(1, {['left']=true})
    else
        r,g,b = gui.getpixel(190, 40)
        if r == 64 and g == 72 and b == 104 then
            left = 1
        end

        joypad.set(1, {['right']=true})
    end

    emu.frameadvance()
end