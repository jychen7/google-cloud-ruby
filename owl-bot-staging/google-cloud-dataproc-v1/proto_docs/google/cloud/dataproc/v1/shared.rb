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


module Google
  module Cloud
    module Dataproc
      module V1
        # Runtime configuration for a workload.
        # @!attribute [rw] version
        #   @return [::String]
        #     Optional. Version of the batch runtime.
        # @!attribute [rw] container_image
        #   @return [::String]
        #     Optional. Optional custom container image for the job runtime environment. If
        #     not specified, a default container image will be used.
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A mapping of property names to values, which are used to configure workload
        #     execution.
        class RuntimeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Environment configuration for a workload.
        # @!attribute [rw] execution_config
        #   @return [::Google::Cloud::Dataproc::V1::ExecutionConfig]
        #     Optional. Execution configuration for a workload.
        # @!attribute [rw] peripherals_config
        #   @return [::Google::Cloud::Dataproc::V1::PeripheralsConfig]
        #     Optional. Peripherals configuration that workload has access to.
        class EnvironmentConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Execution configuration for a workload.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. Service account that used to execute workload.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     Optional. Network URI to connect workload to.
        # @!attribute [rw] subnetwork_uri
        #   @return [::String]
        #     Optional. Subnetwork URI to connect workload to.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Optional. Tags used for network traffic control.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. The Cloud KMS key to use for encryption.
        class ExecutionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Spark History Server configuration for the workload.
        # @!attribute [rw] dataproc_cluster
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Cluster to act as a Spark History
        #     Server for the workload.
        #
        #     Example:
        #
        #     * `projects/[project_id]/regions/[region]/clusters/[cluster_name]`
        class SparkHistoryServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Auxiliary services configuration for a workload.
        # @!attribute [rw] metastore_service
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Metastore service.
        #
        #     Example:
        #
        #     * `projects/[project_id]/locations/[region]/services/[service_id]`
        # @!attribute [rw] spark_history_server_config
        #   @return [::Google::Cloud::Dataproc::V1::SparkHistoryServerConfig]
        #     Optional. The Spark History Server configuration for the workload.
        class PeripheralsConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime information about workload execution.
        # @!attribute [r] endpoints
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. Map of remote access endpoints (such as web interfaces and APIs) to their
        #     URIs.
        # @!attribute [r] output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the stdout and stderr of the workload.
        # @!attribute [r] diagnostic_output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the diagnostics tarball.
        class RuntimeInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EndpointsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Cluster components that can be activated.
        module Component
          # Unspecified component. Specifying this will cause Cluster creation to fail.
          COMPONENT_UNSPECIFIED = 0

          # The Anaconda python distribution. The Anaconda component is not supported
          # in the Dataproc
          # <a
          # href="/dataproc/docs/concepts/versioning/dataproc-release-2.0">2.0
          # image</a>. The 2.0 image is pre-installed with Miniconda.
          ANACONDA = 5

          # Docker
          DOCKER = 13

          # The Druid query engine. (alpha)
          DRUID = 9

          # Flink
          FLINK = 14

          # HBase. (beta)
          HBASE = 11

          # The Hive Web HCatalog (the REST service for accessing HCatalog).
          HIVE_WEBHCAT = 3

          # The Jupyter Notebook.
          JUPYTER = 1

          # The Presto query engine.
          PRESTO = 6

          # The Ranger service.
          RANGER = 12

          # The Solr service.
          SOLR = 10

          # The Zeppelin notebook.
          ZEPPELIN = 4

          # The Zookeeper service.
          ZOOKEEPER = 8
        end

        # Actions in response to failure of a resource associated with a cluster.
        module FailureAction
          # When FailureAction is unspecified, failure action defaults to NO_ACTION.
          FAILURE_ACTION_UNSPECIFIED = 0

          # Take no action on failure to create a cluster resource. NO_ACTION is the
          # default.
          NO_ACTION = 1

          # Delete the failed cluster resource.
          DELETE = 2
        end
      end
    end
  end
end
