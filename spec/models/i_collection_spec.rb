=begin
#ConnectWise API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ConnectWise::ICollection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ICollection' do
  before do
    # run before each test
    @instance = ConnectWise::ICollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ICollection' do
    it 'should create an instact of ICollection' do
      expect(@instance).to be_instance_of(ConnectWise::ICollection)
    end
  end
end
