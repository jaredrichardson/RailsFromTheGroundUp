module SkateboardsHelper

def skateboard_icon(skateboard)
  if skateboard.image_path.blank?
    return "skate.png"
  else
    return skateboard.image_path
  end
end

end

