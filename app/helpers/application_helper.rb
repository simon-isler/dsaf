# frozen_string_literal: true

module ApplicationHelper
  def nav_link(text, path)
    options = current_page?(path) ? { class: 'nav-item text-md-center active' } : { class: 'nav-item text-md-center' }
    content_tag(:li, options) do
      link_to text, path, class: 'nav-link'
    end
  end
end
