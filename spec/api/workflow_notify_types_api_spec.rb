
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::WorkflowNotifyTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'WorkflowNotifyTypesApi' do
  before do
    # run before each test
    @instance = ConnectWise::WorkflowNotifyTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowNotifyTypesApi' do
    it 'should create an instance of WorkflowNotifyTypesApi' do
      expect(@instance).to be_instance_of(ConnectWise::WorkflowNotifyTypesApi)
    end
  end

  # unit tests for system_workflows_id_notify_types_count_get
  #
  # Get Workflow Notify Types Count
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'system_workflows_id_notify_types_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_workflows_id_notify_types_get
  #
  # Get Workflow Notify Types
  # @param id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<WorkflowNotifyType>]
  describe 'system_workflows_id_notify_types_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_workflows_id_notify_types_type_id_get
  #
  # Get Workflow Notify Type By Id
  # @param id
  # @param type_id
  # @param [Hash] opts the optional parameters
  # @return [WorkflowNotifyType]
  describe 'system_workflows_id_notify_types_type_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
