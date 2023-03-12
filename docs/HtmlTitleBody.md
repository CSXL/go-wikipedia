# HtmlTitleBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseEtag** | **string** | ETag header of the revision the edit is based on. Should be supplied for all existing pages to ensure clean round-tripping.  | [optional] [default to null]
**Html** | **string** | HTML of the page to save. | [default to null]
**CsrfToken** | **string** | CSRF edit token provided by the MW API. | [default to null]
**Comment** | **string** | Comment summarizing the change. | [optional] [default to null]
**IsMinor** | **bool** | Flag indicating a minor change. | [optional] [default to null]
**IsBot** | **bool** | Flag indicating a bot edit. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

