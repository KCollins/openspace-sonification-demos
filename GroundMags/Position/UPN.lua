-- Basic
-- This asset creates a rotation that places a coordinate axes on the surface of a
-- planetary body. The rotation causes the coordinate axes to remain fixed to the surface
-- of the globe.
--
-- In order for this feature to work properly, the coordinate axes need to be located at
-- the same place as well, so this example also needs a `GlobeTranslation` applied.

-- The example needs a `RenderableGlobe` as a parent to function
local Globe = {
  Identifier = "GlobeRotation_Example_Globe",
  Renderable = {
    Type = "RenderableGlobe"
  },
  GUI = {
    Name = "GlobeRotation - Basic (Globe)",
    Path = "/Examples"
  }
}

local Node = {
  Identifier = "GlobeRotation_Example",
  Parent = "GlobeRotation_Example_Globe",
  Transform = {
    Translation = {
      Type = "GlobeTranslation",
      Globe = "GlobeRotation_Example_Globe",
      Latitude = 72.78,
      Longitude = 303.85
    },
    Rotation = {
      Type = "GlobeRotation",
      Globe = "GlobeRotation_Example_Globe",
      Latitude = 72.78,
      Longitude = 303.85
    }
  },
  Renderable = {
    Type = "RenderableCartesianAxes"
  },
  GUI = {
    Name = "GlobeRotation - Basic",
    Path = "/Examples"
  }
}

asset.onInitialize(function()
  openspace.addSceneGraphNode(Globe)
  openspace.addSceneGraphNode(Node)
end)

asset.onDeinitialize(function()
  openspace.removeSceneGraphNode(Node)
  openspace.removeSceneGraphNode(Globe)
end)
