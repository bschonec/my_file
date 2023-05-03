# frozen_string_literal: true

Puppet::Type.type(:my_file).provide(:ruby) do

 desc 'my_file provider'

def content
 File.read(resource[:name])
end
def content=(value)
 content_file = File.open(resource[:name}, 'w+')
 content_file.write(value)
 content_file.close
end

end
