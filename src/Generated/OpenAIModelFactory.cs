// <auto-generated/>

#nullable disable

using System;
using System.Collections.Generic;
using System.Linq;
using OpenAI.Assistants;
using OpenAI.Audio;
using OpenAI.Chat;
using OpenAI.Embeddings;
using OpenAI.Images;
using OpenAI.Moderations;
using OpenAI.VectorStores;

namespace OpenAI
{
    internal static partial class OpenAIModelFactory
    {
        public static VectorStoreFileCounts VectorStoreFileCounts(int inProgress = default, int completed = default, int failed = default, int cancelled = default, int total = default)
        {
            return new VectorStoreFileCounts(
                inProgress,
                completed,
                failed,
                cancelled,
                total,
                serializedAdditionalRawData: null);
        }

        public static VectorStoreFileAssociationError VectorStoreFileAssociationError(VectorStoreFileAssociationErrorCode code = default, string message = null)
        {
            return new VectorStoreFileAssociationError(code, message, serializedAdditionalRawData: null);
        }

        public static RunError RunError(RunErrorCode code = default, string message = null)
        {
            return new RunError(code, message, serializedAdditionalRawData: null);
        }

        public static RunIncompleteDetails RunIncompleteDetails(RunIncompleteReason? reason = null)
        {
            return new RunIncompleteDetails(reason, serializedAdditionalRawData: null);
        }

        public static RunTokenUsage RunTokenUsage(int outputTokenCount = default, int inputTokenCount = default, int totalTokenCount = default)
        {
            return new RunTokenUsage(outputTokenCount, inputTokenCount, totalTokenCount, serializedAdditionalRawData: null);
        }

        public static RunStepError RunStepError(RunStepErrorCode code = default, string message = null)
        {
            return new RunStepError(code, message, serializedAdditionalRawData: null);
        }

        public static RunStepTokenUsage RunStepTokenUsage(int completionTokens = default, int promptTokens = default, int totalTokens = default)
        {
            return new RunStepTokenUsage(completionTokens, promptTokens, totalTokens, serializedAdditionalRawData: null);
        }

        public static ModerationResultCollection ModerationResultCollection(string id = null, string model = null, IEnumerable<ModerationResult> results = null)
        {
            results ??= new List<ModerationResult>();

            return new ModerationResultCollection(id, model, results?.ToList());
        }

        public static MessageFailureDetails MessageFailureDetails(MessageFailureReason reason = default)
        {
            return new MessageFailureDetails(reason, serializedAdditionalRawData: null);
        }

        public static GeneratedImageCollection GeneratedImageCollection(DateTimeOffset created = default, IEnumerable<GeneratedImage> data = null)
        {
            data ??= new List<GeneratedImage>();

            return new GeneratedImageCollection(created, data?.ToList());
        }

        public static GeneratedImage GeneratedImage(BinaryData imageBytes = null, Uri imageUri = null, string revisedPrompt = null)
        {
            return new GeneratedImage(imageBytes, imageUri, revisedPrompt, serializedAdditionalRawData: null);
        }

        public static EmbeddingTokenUsage EmbeddingTokenUsage(int inputTokenCount = default, int totalTokenCount = default)
        {
            return new EmbeddingTokenUsage(inputTokenCount, totalTokenCount, serializedAdditionalRawData: null);
        }

        public static ChatTokenUsage ChatTokenUsage(int outputTokenCount = default, int inputTokenCount = default, int totalTokenCount = default, ChatOutputTokenUsageDetails outputTokenDetails = null)
        {
            return new ChatTokenUsage(outputTokenCount, inputTokenCount, totalTokenCount, outputTokenDetails, serializedAdditionalRawData: null);
        }

        public static ChatOutputTokenUsageDetails ChatOutputTokenUsageDetails(int reasoningTokenCount = default)
        {
            return new ChatOutputTokenUsageDetails(reasoningTokenCount, serializedAdditionalRawData: null);
        }

        public static ToolChatMessage ToolChatMessage(IEnumerable<ChatMessageContentPart> content = null, string toolCallId = null)
        {
            content ??= new List<ChatMessageContentPart>();

            return new ToolChatMessage(ChatMessageRole.Tool, content?.ToList(), serializedAdditionalRawData: null, toolCallId);
        }

        public static FunctionChatMessage FunctionChatMessage(IEnumerable<ChatMessageContentPart> content = null, string functionName = null)
        {
            content ??= new List<ChatMessageContentPart>();

            return new FunctionChatMessage(ChatMessageRole.Function, content?.ToList(), serializedAdditionalRawData: null, functionName);
        }

        public static ChatFunction ChatFunction(string functionDescription = null, string functionName = null, BinaryData functionParameters = null)
        {
            return new ChatFunction(functionDescription, functionName, functionParameters, serializedAdditionalRawData: null);
        }

        public static ChatTokenLogProbabilityDetails ChatTokenLogProbabilityDetails(string token = null, float logProbability = default, ReadOnlyMemory<byte>? utf8Bytes = null, IEnumerable<ChatTokenTopLogProbabilityDetails> topLogProbabilities = null)
        {
            topLogProbabilities ??= new List<ChatTokenTopLogProbabilityDetails>();

            return new ChatTokenLogProbabilityDetails(token, logProbability, utf8Bytes, topLogProbabilities?.ToList(), serializedAdditionalRawData: null);
        }

        public static ChatTokenTopLogProbabilityDetails ChatTokenTopLogProbabilityDetails(string token = null, float logProbability = default, ReadOnlyMemory<byte>? utf8Bytes = null)
        {
            return new ChatTokenTopLogProbabilityDetails(token, logProbability, utf8Bytes, serializedAdditionalRawData: null);
        }

        public static TranscribedWord TranscribedWord(string word = null, TimeSpan startTime = default, TimeSpan endTime = default)
        {
            return new TranscribedWord(word, startTime, endTime, serializedAdditionalRawData: null);
        }

        public static TranscribedSegment TranscribedSegment(int id = default, int seekOffset = default, TimeSpan startTime = default, TimeSpan endTime = default, string text = null, IEnumerable<int> tokenIds = null, float temperature = default, float averageLogProbability = default, float compressionRatio = default, float noSpeechProbability = default)
        {
            tokenIds ??= new List<int>();

            return new TranscribedSegment(
                id,
                seekOffset,
                startTime,
                endTime,
                text,
                tokenIds?.ToList(),
                temperature,
                averageLogProbability,
                compressionRatio,
                noSpeechProbability,
                serializedAdditionalRawData: null);
        }

        public static StreamingChatFunctionCallUpdate StreamingChatFunctionCallUpdate(string functionArgumentsUpdate = null, string functionName = null)
        {
            return new StreamingChatFunctionCallUpdate(functionArgumentsUpdate, functionName, serializedAdditionalRawData: null);
        }
    }
}
