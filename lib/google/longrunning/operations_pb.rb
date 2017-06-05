# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/longrunning/operations.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/empty_pb'
require 'google/rpc/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.longrunning.Operation" do
    optional :name, :string, 1
    optional :metadata, :message, 2, "google.protobuf.Any"
    optional :done, :bool, 3
    oneof :result do
      optional :error, :message, 4, "google.rpc.Status"
      optional :response, :message, 5, "google.protobuf.Any"
    end
  end
  add_message "google.longrunning.GetOperationRequest" do
    optional :name, :string, 1
  end
  add_message "google.longrunning.ListOperationsRequest" do
    optional :name, :string, 4
    optional :filter, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.longrunning.ListOperationsResponse" do
    repeated :operations, :message, 1, "google.longrunning.Operation"
    optional :next_page_token, :string, 2
  end
  add_message "google.longrunning.CancelOperationRequest" do
    optional :name, :string, 1
  end
  add_message "google.longrunning.DeleteOperationRequest" do
    optional :name, :string, 1
  end
end

module Google
  module Longrunning
    Operation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.Operation").msgclass
    GetOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.GetOperationRequest").msgclass
    ListOperationsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.ListOperationsRequest").msgclass
    ListOperationsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.ListOperationsResponse").msgclass
    CancelOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.CancelOperationRequest").msgclass
    DeleteOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.longrunning.DeleteOperationRequest").msgclass
  end
end
