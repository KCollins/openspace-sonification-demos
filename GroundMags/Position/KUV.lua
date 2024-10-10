-- Example
-- This asset creates a rotation that places a coordinate axes on the surface of a
-- planetary body. The rotation causes the coordinate axes to remain fixed to the surface
-- of the globe.
--
-- For this feature to work properly, the coordinate axes need to be located at
-- the same place, so this example also needs a `GlobeTranslation` applied.

-- This asset is dependent on the Earth
asset.require("scene/solarsystem/planets/earth/earth")

local Node = {
  Identifier = "GlobeRotation_Example",
  Parent = "Earth",
  Transform = {
    Translation = {
      Type = "GlobeTranslation",
      Globe = "Earth",
      Latitude = 74.57,
      Longitude = 302.82
    },
    Rotation = {
      Type = "GlobeRotation",
      Globe = "Earth",
      Latitude = 74.57,
      Longitude = 302.82
    }
  },
  Renderable = {
    Type = "RenderableCartesianAxes"
  },
  GUI = {
    Name = "GlobeRotation - Example",
    Path = "/Examples"
  }
}

asset.onInitialize(function()
  openspace.addSceneGraphNode(Node)
end)

asset.onDeinitialize(function()
  openspace.removeSceneGraphNode(Node)
end)

