module ApplicationHelper

  def render_partial_if_exists(base_name, options={})

    file_name           = ::Rails.root.to_s+"/app/views/layouts/_#{base_name}.html.erb"
    partial_name        = "layouts/#{base_name}"
    else_file_name      = ::Rails.root.to_s+"/app/views/layouts/_#{options[:else]}.html.erb"
    else_partial_name   = "layouts/#{options[:else]}"



   # if File.exists?(file_name)
    #  render :partial => partial_name
    #elsif (options.key?(:else) and !options[:else].nil? and File.exists?(else_file_name))
     # render :partial => else_partial_name
    #end
    end

end
