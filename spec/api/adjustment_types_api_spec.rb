=begin
#ConnectWise API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::AdjustmentTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AdjustmentTypesApi' do
  before do
    # run before each test
    @instance = ConnectWise::AdjustmentTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdjustmentTypesApi' do
    it 'should create an instact of AdjustmentTypesApi' do
      expect(@instance).to be_instance_of(ConnectWise::AdjustmentTypesApi)
    end
  end

  # unit tests for procurement_adjustments_types_count_get
  # 
  # Get Adjustment Types Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'procurement_adjustments_types_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_get
  # 
  # Get Adjustment Types
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<AdjustmentType>]
  describe 'procurement_adjustments_types_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_id_delete
  # 
  # Delete Adjustment Types By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_adjustments_types_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_id_get
  # 
  # Get Adjustment Types By Id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [AdjustmentType]
  describe 'procurement_adjustments_types_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_id_patch
  # 
  # Update Adjustment Types
  # @param id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [AdjustmentType]
  describe 'procurement_adjustments_types_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_id_put
  # 
  # Replace Adjustment Types
  # @param id 
  # @param adjustment_types 
  # @param [Hash] opts the optional parameters
  # @return [AdjustmentType]
  describe 'procurement_adjustments_types_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_adjustments_types_post
  # 
  # Create Adjustment Types
  # @param adjustment_types 
  # @param [Hash] opts the optional parameters
  # @return [AdjustmentType]
  describe 'procurement_adjustments_types_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end