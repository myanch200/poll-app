module PagesHelper

  def centered_page(options={}, &block)
    content_tag(:div, class: "p-4 flex flex-col items-center h-screen #{options[:klass]}", &block)
  end
end
