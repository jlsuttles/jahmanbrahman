# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    @content_for_title = page_title.to_s
    @show_title = show_title
  end
  
  def show_title?
    @show_title
  end

  def include_javascript_libraries(*libs)
    libs = libs.map { |lib| "libraries/#{lib}" }

    if Rails.env.production?
      libs = libs.map { |lib| "#{lib}.min" }
      javascript_include_tag *libs
    else
      libs.each { |lib| assert_minified_version(lib) }
      javascript_include_tag *libs
    end
  end

  def assert_minified_version(path)
    unless File.exists?(File.join(Rails.root, 'public', 'javascripts', "#{path}.min.js"))
      raise "No minified version for #{path}"
    end
  end
  
  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end
  
  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end

  def body_classes
    "#{params[:controller]} #{params[:action]}".gsub('/', '_')
  end

  def active_when(active_tab_value)
    (@active_tab == active_tab_value) ? 'active' : ''
  end
end
