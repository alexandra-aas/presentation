module ApplicationHelpers
  def material_icon(name, extra_classes)
    content_tag :i, name, class: "material-icons #{extra_classes}"
  end

  def svg(name)
    root = Middleman::Application.root
    images_path = config[:images_dir]
    file_path = "#{root}/source/#{images_path}/#{name}.svg"

    return File.read(file_path) if File.exists?(file_path)
    "(SVG not found)"
  end
end
