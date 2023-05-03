# frozen_string_literal: true

Puppet::Type.newtype(:my_file) do

ensurable

newparam(:name, :namevar => true) do

  desc "Filename"

end

newparam(:content) do
  desc "file content"
end

end
