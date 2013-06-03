

--***************************************************
screen = PhysicsScreen(10,60)
screen:setNormalizedCoordinates(true, 600)
instance = ScreenEntityInstance("Resources/MyScreen.entity2d")
screen:addChild(instance)

--********************************************************
function setFloors (a, b)
	floors = {}    -- new array
	for i=a,b do
    floors[i] = instance:getScreenEntityById("ScreenShape." .. tostring(i), true)
    screen:addPhysicsChild(floors[i], PhysicsScreenEntity.ENTITY_RECT, true,0)
  end
end
--********************************************************


player = instance:getScreenEntityById("Player", true)
player:setRotation(360)

screen:addPhysicsChild(player, PhysicsScreenEntity.ENTITY_RECT, false)

setFloors(3,16)

function Update(elapsed)
end
--**********************************************************
function onKeyDown(key)
	if key == KEY_LEFT then
    screen:applyImpulse(player,-10,0)
	elseif key == KEY_RIGHT then
    screen:applyImpulse(player,10,0)
  elseif key == 32 then
print("in Moveup")
    screen:applyImpulse(player,0,-10)
	end 
end
--**********************************************************

function Update(elapsed)
 
end
