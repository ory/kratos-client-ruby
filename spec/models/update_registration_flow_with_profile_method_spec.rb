=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.3.5
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryKratosClient::UpdateRegistrationFlowWithProfileMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryKratosClient::UpdateRegistrationFlowWithProfileMethod do
  let(:instance) { OryKratosClient::UpdateRegistrationFlowWithProfileMethod.new }

  describe 'test an instance of UpdateRegistrationFlowWithProfileMethod' do
    it 'should create an instance of UpdateRegistrationFlowWithProfileMethod' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryKratosClient::UpdateRegistrationFlowWithProfileMethod)
    end
  end

  describe 'test attribute "csrf_token"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "screen"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["credential-selection", "previous"])
      # validator.allowable_values.each do |value|
      #   expect { instance.screen = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "traits"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "transient_payload"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
