# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/workflows/v1/workflows_pb"
require "google/cloud/workflows/v1/workflows_services_pb"
require "google/cloud/workflows/v1/workflows"

class ::Google::Cloud::Workflows::V1::Workflows::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_workflows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::V1::ListWorkflowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_workflows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workflows, name
      assert_kind_of ::Google::Cloud::Workflows::V1::ListWorkflowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workflows_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workflows({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workflows parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workflows ::Google::Cloud::Workflows::V1::ListWorkflowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workflows({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workflows(::Google::Cloud::Workflows::V1::ListWorkflowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workflows_client_stub.call_rpc_count
    end
  end

  def test_get_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::V1::Workflow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workflow, name
      assert_kind_of ::Google::Cloud::Workflows::V1::GetWorkflowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workflow({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workflow name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workflow ::Google::Cloud::Workflows::V1::GetWorkflowRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workflow({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workflow(::Google::Cloud::Workflows::V1::GetWorkflowRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workflow_client_stub.call_rpc_count
    end
  end

  def test_create_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    workflow = {}
    workflow_id = "hello world"

    create_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_workflow, name
      assert_kind_of ::Google::Cloud::Workflows::V1::CreateWorkflowRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Workflows::V1::Workflow), request["workflow"]
      assert_equal "hello world", request["workflow_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_workflow({ parent: parent, workflow: workflow, workflow_id: workflow_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_workflow parent: parent, workflow: workflow, workflow_id: workflow_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_workflow ::Google::Cloud::Workflows::V1::CreateWorkflowRequest.new(parent: parent, workflow: workflow, workflow_id: workflow_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_workflow({ parent: parent, workflow: workflow, workflow_id: workflow_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_workflow(::Google::Cloud::Workflows::V1::CreateWorkflowRequest.new(parent: parent, workflow: workflow, workflow_id: workflow_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_workflow_client_stub.call_rpc_count
    end
  end

  def test_delete_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_workflow, name
      assert_kind_of ::Google::Cloud::Workflows::V1::DeleteWorkflowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_workflow({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_workflow name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_workflow ::Google::Cloud::Workflows::V1::DeleteWorkflowRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_workflow({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_workflow(::Google::Cloud::Workflows::V1::DeleteWorkflowRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_workflow_client_stub.call_rpc_count
    end
  end

  def test_update_workflow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    workflow = {}
    update_mask = {}

    update_workflow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_workflow, name
      assert_kind_of ::Google::Cloud::Workflows::V1::UpdateWorkflowRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Workflows::V1::Workflow), request["workflow"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_workflow_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_workflow({ workflow: workflow, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_workflow workflow: workflow, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_workflow ::Google::Cloud::Workflows::V1::UpdateWorkflowRequest.new(workflow: workflow, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_workflow({ workflow: workflow, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_workflow(::Google::Cloud::Workflows::V1::UpdateWorkflowRequest.new(workflow: workflow, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_workflow_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Workflows::V1::Workflows::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Workflows::V1::Workflows::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Workflows::V1::Workflows::Operations, client.operations_client
  end
end
