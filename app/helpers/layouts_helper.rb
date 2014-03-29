module LayoutsHelper
  def page_title
    title_components = [configatron.app_name]
    
    title_components.unshift(current_user.name) if current_user

    saved_title = content_for(:title)
    title_components.unshift(saved_title) unless saved_title.blank?

    title_components.join(' | ')
  end

  def title(page_title, options = {})
    content_for(:title) { strip_tags(page_title.to_s) }
    @show_title = options.fetch(:show_title, true)
  end

  def show_title?
    @show_title
  end
end
