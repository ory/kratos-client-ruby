=begin
#Ory Identities API

#This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

The version of the OpenAPI document: v0.11.1
Contact: office@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryKratosClient::VerificationFlowState
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryKratosClient::VerificationFlowState do
  let(:instance) { OryKratosClient::VerificationFlowState.new }

  describe 'test an instance of VerificationFlowState' do
    it 'should create an instance of VerificationFlowState' do
      expect(instance).to be_instance_of(OryKratosClient::VerificationFlowState)
    end
  end
end
