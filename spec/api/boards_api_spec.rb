
require 'spec_helper'
require 'json'

# Unit tests for ConnectWise::BoardsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
RSpec.describe 'BoardsApi' do
  before do
    # run before each test
    @instance = ConnectWise::BoardsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BoardsApi' do
    it 'should create an instance of BoardsApi' do
      expect(@instance).to be_instance_of(ConnectWise::BoardsApi)
    end
  end

  # unit tests for service_boards_copy_post
  #
  # Copy Board
  # @param copy
  # @param [Hash] opts the optional parameters
  # @return [Board]
  describe 'service_boards_copy_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_count_get
  #
  # Get Boards Count
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @return [Count]
  describe 'service_boards_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_get
  #
  # Get Boards
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions
  # @option opts [String] :order_by
  # @option opts [String] :childconditions
  # @option opts [String] :customfieldconditions
  # @option opts [Integer] :page
  # @option opts [Integer] :page_size
  # @return [Array<Board>]
  describe 'service_boards_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_id_delete
  #
  # Delete Board By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'service_boards_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_id_get
  #
  # Get Board By Id
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [Board]
  describe 'service_boards_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_id_patch
  #
  # Update Board
  # @param id
  # @param operations
  # @param [Hash] opts the optional parameters
  # @return [Board]
  describe 'service_boards_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_id_put
  #
  # Replace Board
  # @param id
  # @param board
  # @param [Hash] opts the optional parameters
  # @return [Board]
  describe 'service_boards_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for service_boards_post
  #
  # Create Board
  # @param board
  # @param [Hash] opts the optional parameters
  # @return [Board]
  describe 'service_boards_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
