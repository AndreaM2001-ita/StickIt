local composer = require("composer")

local scene=composer.newScene()

local widget = require( "widget" )

width =display.actualContentWidth
height=display.actualContentHeight

local fillColor = { default={1,0,0,1}, over={1,0,4,1} }
local stroke = { default={0,0,0,1},over={0,0,0,1}}



function switch(event)
    local where=event.target.id
    local options={effect=effect, time=300}
    composer.gotoScene("canvas",options)
end


function makeRect(x,y)
    button= widget.newButton({
        --id=where,
        onRelease=switch,
        shape = "roundedRect",
        x=x,
        y=y,
        width = width-width/7,
		height = height/7,
        color=fillColor,
        cornerRadius = 50,
        strokeColor = stroke,
		strokeWidth = 8
    }
    );
    return button
end

function makeBox(x,y,ancX,ancY,height)
    box= widget.newButton({
        --id=where,
        onRelease=switch,
        shape = "roundedRect",
        x=ancX+ancX/1.9,
        y=ancY,
        width = height*0.80,
		height = height*0.80,
        color=fillColor,
        cornerRadius = 50,
        strokeColor = stroke,
		strokeWidth = 8
    }
    );
    return box
end


function scene:create(event)

    local sceneGroup= self.view

    local rect=display.newRect(sceneGroup,0,0,width*2,height*2);
    rect:setFillColor(255,255,255)
    sceneGroup:insert(rect)
  
    box=makeRect(width-width/2,height/4)
    sceneGroup:insert(box)
    image=makeBox(width-width/4,height/7+200,box.x,box.y,box.height)
    sceneGroup:insert(image)
    --create list of obj

end

scene:addEventListener("create", scene )

return scene



