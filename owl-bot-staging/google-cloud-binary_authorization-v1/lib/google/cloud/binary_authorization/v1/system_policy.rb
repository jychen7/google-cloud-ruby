# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/binary_authorization/v1/version"

require "google/cloud/binary_authorization/v1/system_policy/credentials"
require "google/cloud/binary_authorization/v1/system_policy/paths"
require "google/cloud/binary_authorization/v1/system_policy/client"

module Google
  module Cloud
    module BinaryAuthorization
      module V1
        ##
        # API for working with the system policy.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/binary_authorization/v1/system_policy"
        #     client = ::Google::Cloud::BinaryAuthorization::V1::SystemPolicy::Client.new
        #
        module SystemPolicy
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "system_policy", "helpers.rb"
require "google/cloud/binary_authorization/v1/system_policy/helpers" if ::File.file? helper_path
