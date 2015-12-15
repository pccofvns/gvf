module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Global Village Foundation"
    if page_title.empty?
      base_title
    else
      "#{page_title}"
    end
  end

  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
   end
end
