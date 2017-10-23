module ApplicationHelper

  def offset_render(content, attrs = {})
    render 'layouts/offset_content', offset_content: content, attrs: attrs
  end
end
