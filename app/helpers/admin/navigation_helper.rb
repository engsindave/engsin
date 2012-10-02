module Admin::NavigationHelper
  def nav_link_to(text, url, options)
    if url == request.fullpath
      content_tag(:li, class: 'active') do
        link_to(text, url, options)
      end
    else
      content_tag(:li) do
        link_to(text, url, options)
      end
    end
  end
end
