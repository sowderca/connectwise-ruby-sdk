
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::LdapConfigurationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'LdapConfigurationsApi' do
  before do
    # run before each test
    @instance = ConnectWise::LdapConfigurationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LdapConfigurationsApi' do
    it 'should create an instance of LdapConfigurationsApi' do
      expect(@instance).to be_instance_of(ConnectWise::LdapConfigurationsApi)
    end
  end

  # unit tests for system_ldap_configurations_count_get
  #
  # Get Ldap Configurations Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'system_ldap_configurations_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_get
  #
  # Get Ldap Configurations
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<LdapConfiguration>]
  describe 'system_ldap_configurations_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_id_delete
  #
  # Delete Ldap Configuration By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_ldap_configurations_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_id_get
  #
  # Get Ldap Configuration By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [LdapConfiguration]
  describe 'system_ldap_configurations_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_id_patch
  #
  # Update Ldap Configuration
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [LdapConfiguration]
  describe 'system_ldap_configurations_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_id_put
  #
  # Replace Ldap Configuration
  # @param id
  # @param ldap_configuration
  # @param [Hash] opts the optional parameters
  # @return [LdapConfiguration]
  describe 'system_ldap_configurations_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_ldap_configurations_post
  #
  # Create Ldap Configuration
  # @param ldap_configuration
  # @param [Hash] opts the optional parameters
  # @return [LdapConfiguration]
  describe 'system_ldap_configurations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
