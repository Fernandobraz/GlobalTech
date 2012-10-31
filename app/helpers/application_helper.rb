module ApplicationHelper
  def action_title(title = nil, &block)
    if title.nil? and block_given?
      buffer  = with_output_buffer { title = yield }
      title ||= buffer.presence
    end

    return '' unless title

    title = raw title
      .gsub(/[\n|\r|\t]+/, '')
      .gsub(/(\s)\1+/, '\1')
      .strip

    content_for :title, strip_tags(title).strip
    content_tag :h2, title
  end
end
