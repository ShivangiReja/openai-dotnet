import "@typespec/openapi";
import "../responses/models.tsp";
import "../common/models.tsp";
using TypeSpec.OpenAPI;
namespace OpenAI;
#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
model ConversationResource {
  /** The unique ID of the conversation. */
  id: string;

  /** The object type, which is always `conversation`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  object: "conversation" = "conversation";

  /**Set of 16 key-value pairs that can be attached to an object. This can be         useful for storing additional information about the object in a structured         format, and querying for objects via API or the dashboard.
  Keys are strings with a maximum length of 64 characters. Values are strings         with a maximum length of 512 characters.*/
  #suppress "@azure-tools/typespec-azure-core/no-unknown" "Auto-suppressed warnings non-applicable rules during import."
  metadata: unknown;

  /** The time at which the conversation was created, measured in seconds since the Unix epoch. */
  #suppress "@azure-tools/typespec-azure-core/no-generic-numeric" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  created_at: integer;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
#suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
@summary("The conversation object")
@extension(
  "x-oaiMeta",
  #{ name: "The conversation object", group: "conversations" }
)
model Conversation {
  ...ConversationResource;
}

/** A message to or from the model. */
@summary("Message")
model Message extends ConversationItem {
  /** The type of the message. Always set to `message`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  type: "message" = "message";

  /** The unique ID of the message. */
  id: string;

  /** The status of item. One of `in_progress`, `completed`, or `incomplete`. Populated when items are returned via API. */
  status: MessageStatus;

  /** The role of the message. One of `unknown`, `user`, `assistant`, `system`, `critic`, `discriminator`, `developer`, or `tool`. */
  role: MessageRole;

  /** The content of the message */
  content: (
    | TextContent
    | SummaryTextContent
    | ComputerScreenshotContent)[];
}

#suppress "@azure-tools/typespec-azure-core/no-enum" "Auto-suppressed warnings non-applicable rules during import."
#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
enum MessageStatus {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  in_progress,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  completed,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  incomplete,
}

#suppress "@azure-tools/typespec-azure-core/no-enum" "Auto-suppressed warnings non-applicable rules during import."
#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
enum MessageRole {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  `unknown`,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  user,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  assistant,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  system,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  critic,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  discriminator,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  developer,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  tool,
}

/** A text content. */
@summary("Text Content")
model TextContent {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  type: "text" = "text";

  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  text: string;
}

/** A summary text from the model. */
@summary("Summary text")
model SummaryTextContent {
  /** The type of the object. Always `summary_text`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  type: "summary_text" = "summary_text";

  /** A summary of the reasoning output from the model so far. */
  text: string;
}

/** A screenshot of a computer. */
@summary("Computer screenshot")
model ComputerScreenshotContent {
  /** Specifies the event type. For a computer screenshot, this property is always set to `computer_screenshot`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  type: "computer_screenshot" = "computer_screenshot";

  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-nullable" "Auto-suppressed warnings non-applicable rules during import."
  image_url: string | null;
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-nullable" "Auto-suppressed warnings non-applicable rules during import."
  file_id: string | null;
}

/** A summary text from the model. */
@summary("Summary text")
model Summary {
  /** The type of the object. Always `summary_text`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  type: "summary_text" = "summary_text";

  /** A summary of the reasoning output from the model so far. */
  text: string;
}

/** A list of Conversation items. */
#suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
@summary("The conversation item list")
@extension("x-oaiMeta", #{ name: "The item list", group: "conversations" })
model ConversationItemList {
  /** The type of object returned, must be `list`. */
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  object: "list";

  /** A list of conversation items. */
  data: ConversationItem[];

  /** Whether there are more items available. */
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  has_more: boolean;

  /** The ID of the first item in the list. */
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  first_id: string;

  /** The ID of the last item in the list. */
  #suppress "@azure-tools/typespec-azure-core/casing-style" "Auto-suppressed warnings non-applicable rules during import."
  last_id: string;
}

/** A single item within a conversation. The set of possible types are the same as the `output` type of a [Response object](https://platform.openai.com/docs/api-reference/responses/object#responses/object-output). */
@summary("Conversation item")
@discriminator("type")
model ConversationItem {
  #suppress "@azure-tools/typespec-azure-core/no-string-discriminator" "Auto-suppressed warnings non-applicable rules during import."
  type: string;
}

/** The conversation that this response belongs to. */
@summary("Conversation object")
model ConversationParam {
  /** The unique ID of the conversation. */
  id: string;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
model DeletedConversationResource {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
  @extension("x-stainless-const", true)
  object: "conversation.deleted" = "conversation.deleted";

  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  deleted: boolean;
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  id: string;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
#suppress "@azure-tools/typespec-azure-core/no-openapi" "Auto-suppressed warnings non-applicable rules during import."
@summary("The deleted conversation object")
@extension(
  "x-oaiMeta",
  #{ name: "The deleted conversation object", group: "conversations" }
)
model DeletedConversation {
  ...DeletedConversationResource;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
model CreateConversationBody {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-nullable" "Auto-suppressed warnings non-applicable rules during import."
  metadata?: Metadata | null;
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  #suppress "@azure-tools/typespec-azure-core/no-nullable" "Auto-suppressed warnings non-applicable rules during import."
  items?: InputItem[] | null;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
model UpdateConversationBody {
  /**Set of 16 key-value pairs that can be attached to an object. This can be         useful for storing additional information about the object in a structured         format, and querying for objects via API or the dashboard.
  Keys are strings with a maximum length of 64 characters. Values are strings         with a maximum length of 512 characters.*/
  metadata: Metadata;
}

#suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
model CreateConversationItemsParametersBody {
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "Auto-suppressed warnings non-applicable rules during import."
  @maxItems(20)
  items: InputItem[];
}
