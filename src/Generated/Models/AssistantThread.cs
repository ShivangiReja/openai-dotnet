// <auto-generated/>

#nullable disable

using System;
using System.Collections.Generic;

namespace OpenAI.Assistants
{
    public partial class AssistantThread
    {
        internal IDictionary<string, BinaryData> SerializedAdditionalRawData { get; set; }
        internal AssistantThread(string id, DateTimeOffset createdAt, ToolResources toolResources, IReadOnlyDictionary<string, string> metadata)
        {
            Argument.AssertNotNull(id, nameof(id));

            Id = id;
            CreatedAt = createdAt;
            ToolResources = toolResources;
            Metadata = metadata;
        }

        internal AssistantThread(string id, InternalThreadObjectObject @object, DateTimeOffset createdAt, ToolResources toolResources, IReadOnlyDictionary<string, string> metadata, IDictionary<string, BinaryData> serializedAdditionalRawData)
        {
            Id = id;
            Object = @object;
            CreatedAt = createdAt;
            ToolResources = toolResources;
            Metadata = metadata;
            SerializedAdditionalRawData = serializedAdditionalRawData;
        }

        internal AssistantThread()
        {
        }

        public string Id { get; }

        public DateTimeOffset CreatedAt { get; }
        public IReadOnlyDictionary<string, string> Metadata { get; }
    }
}
