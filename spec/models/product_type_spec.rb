
require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ConnectWise::ProductType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'ProductType' do
  before do
    # run before each test
    @instance = ConnectWise::ProductType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductType' do
    it 'should create an instance of ProductType' do
      expect(@instance).to be_instance_of(ConnectWise::ProductType)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "inactive_flag"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type_xref"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["InventoryPart", "NonInventoryPart", "OtherCharge", "Service"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type_xref = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "_info"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
