data.raw["mining-drill"]["geothermal-plant-mk01"] = nil
ENTITY {
    type = "assembling-machine",
    name = "geothermal-plant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/geothermal-plant-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "geothermal-plant-mk01"},
    resource_categories = {"geothermal-crack"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{ -5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{ -5.5, -5.5}, {5.5, 5.5}},
    --drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions_per_second_per_watt = 0,
      usage_priority = "secondary-input"
    },
    fluid_boxes = {
      {
          production_type = "input",
          pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {1.17, 2.78}, {-0.05, -0.8}, nil, nil, pipes2),
          pipe_covers = DATA.Pipes.covers(true, true, true, true),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-6, 0}}},
      },
      {
        production_type = "output",
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.05, -0.8}, nil, nil, pipes),
        base_level = 1,
        pipe_connections =
        {
          {position = {0, -6}, type = 'output'}
        },
      },
    },
    energy_usage = "1MW",
    crafting_speed = 1,
    crafting_categories = {"geowater"},
    allowed_effects = {"consumption", "speed", "productivity"},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    --base_render_layer = "lower-object-above-shadow",
    animations = {
      layers = {
          {
              filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-raw.png",
              width = 128,
              height = 512,
              repeat_count = 50,
              line_length = 1,
              frame_count = 1,
              animation_speed = 0.25,
              shift = util.by_pixel(-112, -80)
          },
          {
            filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/left-l.png",
            width = 128,
            height = 512,
            repeat_count = 50,
            line_length = 1,
            frame_count = 1,
            animation_speed = 0.25,
            draw_as_glow = true,
            shift = util.by_pixel(-112, -80)
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-raw.png",
          width = 128,
          height = 512,
          line_length = 16,
          frame_count = 50,
          animation_speed = 0.25,
          shift = util.by_pixel(16, -80)
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/mid-l.png",
          width = 128,
          height = 512,
          line_length = 16,
          frame_count = 50,
          animation_speed = 0.25,
          draw_as_glow = true,
          shift = util.by_pixel(16, -80)
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-raw.png",
          width = 96,
          height = 512,
          line_length = 16,
          frame_count = 50,
          animation_speed = 0.25,
          shift = util.by_pixel(128, -80)
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/right-l.png",
          width = 96,
          height = 512,
          line_length = 16,
          frame_count = 50,
          animation_speed = 0.25,
          draw_as_glow = true,
          shift = util.by_pixel(128, -80)
        },
        {
          filename = "__pyalternativeenergygraphics__/graphics/entity/geothermal-plant/sh.png",
          width = 416,
          height = 320,
          repeat_count = 50,
          line_length = 1,
          frame_count = 1,
          animation_speed = 0.25,
          draw_as_shadow = true,
          shift = util.by_pixel(32, 16)
        },
  },
},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__pyalternativeenergygraphics__/sounds/geothermal-plant.ogg", volume = 0.5 },
      apparent_volume = 0.5
    },
    fast_replaceable_group = "geothermal-plant",
  }
