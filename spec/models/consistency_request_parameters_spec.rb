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

# Unit tests for OryKratosClient::ConsistencyRequestParameters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryKratosClient::ConsistencyRequestParameters do
  let(:instance) { OryKratosClient::ConsistencyRequestParameters.new }

  describe 'test an instance of ConsistencyRequestParameters' do
    it 'should create an instance of ConsistencyRequestParameters' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryKratosClient::ConsistencyRequestParameters)
    end
  end

  describe 'test attribute "consistency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "strong", "eventual"])
      # validator.allowable_values.each do |value|
      #   expect { instance.consistency = value }.not_to raise_error
      # end
    end
  end

end