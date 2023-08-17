module ApplicationHelper
    ICONS = {
        'Heart' => '<i class="fas fa-heart"></i>',
        'Star' => '<i class="fas fa-star"></i>',
        # Add more icons as needed
    }.freeze
    
    def icon_options_for_select(selected = nil)
      options_for_select(ICONS.keys.map { |name| [name, ICONS[name]] }, selected)
    end
end
