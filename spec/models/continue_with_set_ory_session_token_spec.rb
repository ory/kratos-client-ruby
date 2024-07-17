=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v1.2.1
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryKratosClient::ContinueWithSetOrySessionToken
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryKratosClient::ContinueWithSetOrySessionToken do
  let(:instance) { OryKratosClient::ContinueWithSetOrySessionToken.new }

  describe 'test an instance of ContinueWithSetOrySessionToken' do
    it 'should create an instance of ContinueWithSetOrySessionToken' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryKratosClient::ContinueWithSetOrySessionToken)
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["set_ory_session_token"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "ory_session_token"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
