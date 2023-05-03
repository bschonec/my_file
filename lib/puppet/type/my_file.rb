# frozen_string_literal: true

Puppet::Type.newtype(:my_file) do

ensurable

newparam(:name, :namevar => true) do

  desc "Filename"

end

newproperty(:content) do
  desc "file content"
  validate do |value|
    fail("Invalid value: #{value}") unless value =~ /^([A-Za-z]).*/
   end
end

end
