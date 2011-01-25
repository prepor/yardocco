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
  files = {}
  @definitions = (method_listing + attr_listing).map { |v| files[v.file] = true; [v.line, v] }.sort_by { |line, o| line }
  @annotations = files.keys.map do |file_name|
    @@murdoc_annotations[file_name] ||= Murdoc::Annotator.from_file(file_name, nil)
  end
    
  erb(:murdoc)
end

def objects_for_line(line)
  res = []
  while @definitions.first && @definitions.first[0] == line
    res << @definitions.shift[1]
  end
  res
end