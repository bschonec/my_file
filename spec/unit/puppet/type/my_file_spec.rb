# frozen_string_literal: true

require 'spec_helper'
require 'puppet/type/my_file'

RSpec.describe 'the my_file type' do
  it 'loads' do
    expect(Puppet::Type.type(:my_file)).not_to be_nil
  end
end
