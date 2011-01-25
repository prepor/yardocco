require 'murdoc'
require 'benchmark'
def init
  sections :header, :box_info, :children, 
    :constant_summary, [T('docstring')], :inherited_constants, 
    :attribute_summary, [:item_summary], 
    :method_summary, [:item_summary],
    :murdoc
end

def murdoc
  @@murdoc_annotations ||= {}
  @stylesheet = file('style.css')
  @definitions = (method_listing + attr_listing).map { |v| [v.line, v] }.sort_by { |line, o| line }
  @annotations = object.files.map do |file_name, line|
    @@murdoc_annotations[file_name] ||= Murdoc::Annotator.from_file(file_name, nil)
  end
    
  erb(:murdoc)
end


# def murdoc  
#   @definitions = (method_listing + attr_listing).map { |v| [v.line, v] }.sort_by { |line, o| line }
#   object.files.map do |file_name, line|
#     render_file file_name
#   end * "\n"
# end
# 
# def render_file(name)
#   @@murdoc_files ||= {}
#   @@murdoc_files[name] ||= begin
#     @stylesheet = file('style.css')
#     @paragraphs = Murdoc::Annotator.from_file(name, nil).paragraphs
#     erb(:murdoc)
#   end
# end