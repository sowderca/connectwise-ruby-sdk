
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::PricingBreaksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'PricingBreaksApi' do
  before do
    # run before each test
    @instance = ConnectWise::PricingBreaksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PricingBreaksApi' do
    it 'should create an instance of PricingBreaksApi' do
      expect(@instance).to be_instance_of(ConnectWise::PricingBreaksApi)
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete
  #
  # Delete Pricing Break By Id
  # @param sched_id
  # @param detail_id
  # @param break_id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get
  #
  # Get Pricing Break By Id
  # @param sched_id
  # @param detail_id
  # @param break_id
  # @param [Hash] opts the optional parameters
  # @return [PricingBreak]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch
  #
  # Update Pricing Break
  # @param sched_id
  # @param detail_id
  # @param break_id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [PricingBreak]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put
  #
  # Replace Pricing Break
  # @param sched_id
  # @param detail_id
  # @param break_id
  # @param pricing_break
  # @param [Hash] opts the optional parameters
  # @return [PricingBreak]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get
  #
  # Get Pricing Break Count
  # @param sched_id
  # @param detail_id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_get
  #
  # Get Pricing Break
  # @param sched_id
  # @param detail_id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<PricingBreak>]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for procurement_pricingschedules_sched_id_details_detail_id_breaks_post
  #
  # Create Pricing Break
  # @param sched_id
  # @param detail_id
  # @param pricing_break
  # @param [Hash] opts the optional parameters
  # @return [PricingBreak]
  describe 'procurement_pricingschedules_sched_id_details_detail_id_breaks_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
