
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::CompanyTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'CompanyTypesApi' do
  before do
    # run before each test
    @instance = ConnectWise::CompanyTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompanyTypesApi' do
    it 'should create an instance of CompanyTypesApi' do
      expect(@instance).to be_instance_of(ConnectWise::CompanyTypesApi)
    end
  end

  # unit tests for company_companies_types_count_get
  #
  # Get Company Types Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'company_companies_types_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_get
  #
  # Get Company Types
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<CompanyType>]
  describe 'company_companies_types_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_id_delete
  #
  # Delete Company Type By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'company_companies_types_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_id_get
  #
  # Get Company Type By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [CompanyType]
  describe 'company_companies_types_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_id_patch
  #
  # Update Company Type
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [CompanyType]
  describe 'company_companies_types_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_id_put
  #
  # Replace Company Type
  # @param id
  # @param company_type
  # @param [Hash] opts the optional parameters
  # @return [CompanyType]
  describe 'company_companies_types_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_companies_types_post
  #
  # Create Company Type
  # @param company_type
  # @param [Hash] opts the optional parameters
  # @return [CompanyType]
  describe 'company_companies_types_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
