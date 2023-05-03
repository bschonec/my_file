# frozen_string_literal: true

Puppet::Type.newtype(:my_file) do

ensurable

newparam(:name, :namevar => true) do

  desc "Filename"

end

newproperty(:content) do
  desc "file content"
end

end
