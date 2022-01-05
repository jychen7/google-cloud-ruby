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
    module AutoML
      module V1beta1
        # Dataset metadata for classification.
        # @!attribute [rw] classification_type
        #   @return [::Google::Cloud::AutoML::V1beta1::ClassificationType]
        #     Required. Type of the classification problem.
        class TextClassificationDatasetMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Model metadata that is specific to text classification.
        # @!attribute [rw] classification_type
        #   @return [::Google::Cloud::AutoML::V1beta1::ClassificationType]
        #     Output only. Classification type of the dataset used to train this model.
        class TextClassificationModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Dataset metadata that is specific to text extraction
        class TextExtractionDatasetMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Model metadata that is specific to text extraction.
        # @!attribute [rw] model_hint
        #   @return [::String]
        #     Indicates the scope of model use case.
        #
        #     * `default`: Use to train a general text extraction model. Default value.
        #
        #     * `health_care`: Use to train a text extraction model that is tuned for
        #       healthcare applications.
        class TextExtractionModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Dataset metadata for text sentiment.
        # @!attribute [rw] sentiment_max
        #   @return [::Integer]
        #     Required. A sentiment is expressed as an integer ordinal, where higher value
        #     means a more positive sentiment. The range of sentiments that will be used
        #     is between 0 and sentiment_max (inclusive on both ends), and all the values
        #     in the range must be represented in the dataset before a model can be
        #     created.
        #     sentiment_max value must be between 1 and 10 (inclusive).
        class TextSentimentDatasetMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Model metadata that is specific to text sentiment.
        class TextSentimentModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
