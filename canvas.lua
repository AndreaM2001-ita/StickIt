local composer=require("composer")

local scene=composer.newScene()

local fillColor = { default={1,0,0,1}, over={1,0,4,1} }
local stroke = { default={0,0,0,1},over={0,0,0,1}}

local function createCanvas(parent,x,y)
    canvas=display.newRoundedRect(parent,x,y,width-width/7,width-width/7,50); 
    canvas:setFillColor(255,255,255)
    canvas:setStrokeColor(0,0,0)
    canvas.strokeWidth=8

    return canvas
end
function scene:create(event)

    local sceneGroup= self.view

    local rect=display.newRect(sceneGroup,0,0,display.actualContentWidth*2,display.actualContentHeight*2);
    rect:setFillColor(255,255,255)
    sceneGroup:insert(rect)

    local canvas=createCanvas(sceneGroup,width/2,height/2.7)
    sceneGroup:insert(canvas)

    local star = display.newLine( 200, 90, 0,0 )
   
    star:setStrokeColor( 1, 0, 0, 1 )
    star.strokeWidth = 8

    


end

scene:addEventListener("create", scene )

return scene