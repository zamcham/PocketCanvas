module ApplicationHelper
  ICONS = {
    'Health' => '<i class="fa-solid fa-kit-medical"></i>',
    'Carn' => '<i class="fa-solid fa-car"></i>',
    'Home' => '<i class="fa-solid fa-house-chimney"></i>',
    'Plane' => '<i class="fa-solid fa-plane"></i>',
    'Theater mask' => '<i class="fa-solid fa-masks-theater"></i>'
  }.freeze

  def icon_options_for_select(selected = nil)
    options_for_select(ICONS.keys.map { |name| [name, ICONS[name]] }, selected)
  end
end
