# Copilot Instructions

## TypeSpec Code Generation

When making changes to TypeSpec files (`.tsp` files), you must regenerate the code by running the following script:

```powershell
./scripts/Invoke-CodeGen.ps1
```

This ensures that any modifications to the TypeSpec definitions are properly reflected in the generated code.

### Discriminators for Polymorphic Types

When defining polymorphic types in TypeSpec files (`.tsp` files), do not use plain type unions. Instead, use the `@discriminator` decorator to ensure proper code generation and avoid binary data types.

#### Example

```typescript
// ✅ Correct: Using discriminator for polymorphic types
@discriminator("type")
model BaseResponse {
  type: ResponseType;
}

model SuccessResponse extends BaseResponse {
  ...
}

// ❌ Incorrect: Plain union for polymorphic types
union Response {
  SuccessResponse,
  ErrorResponse
}
```
