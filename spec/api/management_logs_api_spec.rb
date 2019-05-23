
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::ManagementLogsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ManagementLogsApi' do
  before do
    # run before each test
    @instance = ConnectWise::ManagementLogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManagementLogsApi' do
    it 'should create an instance of ManagementLogsApi' do
      expect(@instance).to be_instance_of(ConnectWise::ManagementLogsApi)
    end
  end

  # unit tests for company_management_id_log_download_get
  # 
  # Download Document
  # @param [Hash] opts the optional parameters
  # @option opts [String] :file_path 
  # @return [nil]
  describe 'company_management_id_log_download_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_management_id_logs_get
  # 
  # Get Management Execute Managed It Syncs
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ManagementLogDocumentInfo>]
  describe 'company_management_id_logs_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end