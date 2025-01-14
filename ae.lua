mon = peripheral.wrap("top")
me = peripheral.wrap("left")
mon.clear()
function getWidth()
local width, _=mon.getSize()
return width
end

function center(y, text)
local width = getWidth()
local textLength = #text
local x = math.floor((width - textLength) / 2) + 1
mon.setCursorPos(x,y)
mon.write(text)
end

function getItemStorage()
center(1,"AE Storage Info")
    while true do

    local maxStorage = me.getTotalItemStorage()

    local availableStorage = me.getAvailableItemStorage() 
    
    local used = maxStorage - availableStorage 
    
    if maxStorage == 0 then
    mon.setCursorPos(1,2)
    mon.clearLine()
    mon.setCursorPos(1,3)
    mon.clearLine()
    end
    
    if used == 0 then
    mon.setCursorPos(1,4)
    mon.clearLine()
    end
    
    center(2,string.format("Max Storage: %d", maxStorage))
    center(3,string.format("Available Storage: %d", availableStorage))
    center(4,string.format("Used Storage: %d" , used))
    end
end
getItemStorage()
sleep(1)

