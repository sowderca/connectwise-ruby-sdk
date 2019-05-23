
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::DepartmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DepartmentsApi' do
  before do
    # run before each test
    @instance = ConnectWise::DepartmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DepartmentsApi' do
    it 'should create an instance of DepartmentsApi' do
      expect(@instance).to be_instance_of(ConnectWise::DepartmentsApi)
    end
  end

  # unit tests for system_departments_count_get
  # 
  # Get Department Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_departments_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_get
  # 
  # Get Department
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<Department>]
  describe 'system_departments_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_delete
  # 
  # Delete Department By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_departments_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_get
  # 
  # Get Department By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Department]
  describe 'system_departments_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_patch
  # 
  # Update Department
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [Department]
  describe 'system_departments_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_id_put
  # 
  # Replace Department
  # @param id 
  # @param department 
  # @param [Hash] opts the optional parameters
  # @return [Department]
  describe 'system_departments_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_departments_post
  # 
  # Create Department
  # @param department 
  # @param [Hash] opts the optional parameters
  # @return [Department]
  describe 'system_departments_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end