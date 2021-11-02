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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/binary_authorization/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :binary_authorization do |config|
  config.add_field! :endpoint,      "binaryauthorization.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module BinaryAuthorization
      ##
      # Create a new client object for BinauthzManagementService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client](https://googleapis.dev/ruby/google-cloud-binary_authorization-v1/latest/Google/Cloud/BinaryAuthorization/V1/BinauthzManagementService/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the BinauthzManagementService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About BinauthzManagementService
      #
      # Google Cloud Management Service for Binary Authorization admission policies
      # and attestation authorities.
      #
      # This API implements a REST model with the following objects:
      #
      # * Policy
      # * Attestor
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [BinauthzManagementService::Client] A client object for the specified version.
      #
      def self.binauthz_management_service version: :v1, &block
        require "google/cloud/binary_authorization/#{version.to_s.downcase}"

        package_name = Google::Cloud::BinaryAuthorization
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::BinaryAuthorization.const_get package_name
        package_module.const_get(:BinauthzManagementService).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SystemPolicy.
      #
      # By default, this returns an instance of
      # [Google::Cloud::BinaryAuthorization::V1::SystemPolicy::Client](https://googleapis.dev/ruby/google-cloud-binary_authorization-v1/latest/Google/Cloud/BinaryAuthorization/V1/SystemPolicy/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the SystemPolicy service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About SystemPolicy
      #
      # API for working with the system policy.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [SystemPolicy::Client] A client object for the specified version.
      #
      def self.system_policy version: :v1, &block
        require "google/cloud/binary_authorization/#{version.to_s.downcase}"

        package_name = Google::Cloud::BinaryAuthorization
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::BinaryAuthorization.const_get package_name
        package_module.const_get(:SystemPolicy).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ValidationHelper.
      #
      # By default, this returns an instance of
      # [Google::Cloud::BinaryAuthorization::V1::ValidationHelper::Client](https://googleapis.dev/ruby/google-cloud-binary_authorization-v1/latest/Google/Cloud/BinaryAuthorization/V1/ValidationHelper/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the ValidationHelper service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About ValidationHelper
      #
      # BinAuthz Attestor verification
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [ValidationHelper::Client] A client object for the specified version.
      #
      def self.validation_helper version: :v1, &block
        require "google/cloud/binary_authorization/#{version.to_s.downcase}"

        package_name = Google::Cloud::BinaryAuthorization
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::BinaryAuthorization.const_get package_name
        package_module.const_get(:ValidationHelper).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-binary_authorization library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.binary_authorization if block_given?

        ::Google::Cloud.configure.binary_authorization
      end
    end
  end
end

helper_path = ::File.join __dir__, "binary_authorization", "helpers.rb"
require "google/cloud/binary_authorization/helpers" if ::File.file? helper_path
