
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::MemberCertificationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MemberCertificationsApi' do
  before do
    # run before each test
    @instance = ConnectWise::MemberCertificationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberCertificationsApi' do
    it 'should create an instance of MemberCertificationsApi' do
      expect(@instance).to be_instance_of(ConnectWise::MemberCertificationsApi)
    end
  end

  # unit tests for system_members_id_certifications_cert_id_delete
  # 
  # Delete Member Certification By Id
  # @param id 
  # @param cert_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_members_id_certifications_cert_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_cert_id_get
  # 
  # Get Member Certification By Id
  # @param id 
  # @param cert_id 
  # @param [Hash] opts the optional parameters
  # @return [MemberCertification]
  describe 'system_members_id_certifications_cert_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_cert_id_patch
  # 
  # Update Member Certification
  # @param id 
  # @param cert_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [MemberCertification]
  describe 'system_members_id_certifications_cert_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_cert_id_put
  # 
  # Replace Member Certification
  # @param id 
  # @param cert_id 
  # @param member_certification 
  # @param [Hash] opts the optional parameters
  # @return [MemberCertification]
  describe 'system_members_id_certifications_cert_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_count_get
  # 
  # Get Member Certifications Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'system_members_id_certifications_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_get
  # 
  # Get Member Certifications
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [String] :childconditions 
  # @option opts [String] :customfieldconditions 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<MemberCertification>]
  describe 'system_members_id_certifications_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_members_id_certifications_post
  # 
  # Create Member Certification
  # @param id 
  # @param member_certification 
  # @param [Hash] opts the optional parameters
  # @return [MemberCertification]
  describe 'system_members_id_certifications_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end