# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DataListsBatchPost**](ReadingListsApi.md#DataListsBatchPost) | **Post** /data/lists/batch | Create multiple new lists for the current user.
[**DataListsChangesSinceDateGet**](ReadingListsApi.md#DataListsChangesSinceDateGet) | **Get** /data/lists/changes/since/{date} | Get recent changes to the lists
[**DataListsGet**](ReadingListsApi.md#DataListsGet) | **Get** /data/lists/ | Get all lists of the current user.
[**DataListsIdDelete**](ReadingListsApi.md#DataListsIdDelete) | **Delete** /data/lists/{id} | Delete a list.
[**DataListsIdEntriesBatchPost**](ReadingListsApi.md#DataListsIdEntriesBatchPost) | **Post** /data/lists/{id}/entries/batch | Create multiple new list entries.
[**DataListsIdEntriesEntryIdDelete**](ReadingListsApi.md#DataListsIdEntriesEntryIdDelete) | **Delete** /data/lists/{id}/entries/{entry_id} | Delete a list entry.
[**DataListsIdEntriesPost**](ReadingListsApi.md#DataListsIdEntriesPost) | **Post** /data/lists/{id}/entries/ | Create a new list entry.
[**DataListsIdPut**](ReadingListsApi.md#DataListsIdPut) | **Put** /data/lists/{id} | Update a list.
[**DataListsPagesProjectTitleGet**](ReadingListsApi.md#DataListsPagesProjectTitleGet) | **Get** /data/lists/pages/{project}/{title} | Get lists of the current user which contain a given page.
[**DataListsPost**](ReadingListsApi.md#DataListsPost) | **Post** /data/lists/ | Create a new list for the current user.
[**DataListsSetupPost**](ReadingListsApi.md#DataListsSetupPost) | **Post** /data/lists/setup | Opt in to use reading lists.
[**DataListsTeardownPost**](ReadingListsApi.md#DataListsTeardownPost) | **Post** /data/lists/teardown | Opt out from using reading lists.
[**GetListEntries**](ReadingListsApi.md#GetListEntries) | **Get** /data/lists/{id}/entries/ | Get all entries of a given list.

# **DataListsBatchPost**
> ListCreateBatch DataListsBatchPost(ctx, body, csrfToken)
Create multiple new lists for the current user.

See `POST /lists/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**Batch**](Batch.md)|  | 
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**ListCreateBatch**](list_create_batch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsChangesSinceDateGet**
> InlineResponse2001 DataListsChangesSinceDateGet(ctx, date, optional)
Get recent changes to the lists

Returns metadata describing lists and entries which have changed. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  For safe synchronization, the date parameter should be taken from the `continue-from` field of a previous `GET /lists/` or `GET /lists/changes/since/{date}` request. This will ensure that no changes are skipped, at the cost of sometimes receiving the same change multitple times. Clients should handle changes in an idempotent way.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **date** | **time.Time**| Cutoff date (in ISO 8601). To ensure reliable synchronization, the API might return changes which are slightly older than the cutoff date.  | 
 **optional** | ***ReadingListsApiDataListsChangesSinceDateGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReadingListsApiDataListsChangesSinceDateGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **next** | **optional.String**| Continuation parameter from previous request | 

### Return type

[**InlineResponse2001**](inline_response_200_1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsGet**
> InlineResponse2001 DataListsGet(ctx, optional)
Get all lists of the current user.

Returns metadata describing the lists of the current user. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***ReadingListsApiDataListsGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReadingListsApiDataListsGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next** | **optional.String**| Continuation parameter from previous request | 
 **sort** | **optional.String**| Sort order - &#x60;name&#x60;: by name, ascending; - &#x60;updated&#x60;: by last modification date, descending.  | [default to updated]

### Return type

[**InlineResponse2001**](inline_response_200_1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsIdDelete**
> interface{} DataListsIdDelete(ctx, id)
Delete a list.

List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsIdEntriesBatchPost**
> InlineResponse2005 DataListsIdEntriesBatchPost(ctx, body, id, csrfToken)
Create multiple new list entries.

See `POST /lists/{id}/entries/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**EntriesBatchBody**](EntriesBatchBody.md)|  | 
  **id** | **int32**|  | 
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsIdEntriesEntryIdDelete**
> interface{} DataListsIdEntriesEntryIdDelete(ctx, id, entryId)
Delete a list entry.

Deletes a given list entry.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**|  | 
  **entryId** | **int32**|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsIdEntriesPost**
> InlineResponse2004 DataListsIdEntriesPost(ctx, body, id, csrfToken)
Create a new list entry.

Creates a new list entry in the given list. On conflict, does nothing and returns the data of an existing list.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**ListEntryWrite**](ListEntryWrite.md)|  | 
  **id** | **int32**|  | 
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**InlineResponse2004**](inline_response_200_4.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsIdPut**
> InlineResponse2002 DataListsIdPut(ctx, id, csrfToken, optional)
Update a list.

List must belong to current user and request must be authenticated with a MediaWiki session cookie. If the name is changed, the new name must not be in use.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**|  | 
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 
 **optional** | ***ReadingListsApiDataListsIdPutOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReadingListsApiDataListsIdPutOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **body** | [**optional.Interface of ListWrite**](ListWrite.md)|  | 

### Return type

[**InlineResponse2002**](inline_response_200_2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsPagesProjectTitleGet**
> InlineResponse2006 DataListsPagesProjectTitleGet(ctx, project, title, optional)
Get lists of the current user which contain a given page.

Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **project** | **string**|  | 
  **title** | **string**|  | 
 **optional** | ***ReadingListsApiDataListsPagesProjectTitleGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReadingListsApiDataListsPagesProjectTitleGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **next** | **optional.String**| Continuation parameter from previous request | 

### Return type

[**InlineResponse2006**](inline_response_200_6.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsPost**
> InlineResponse2002 DataListsPost(ctx, body, csrfToken)
Create a new list for the current user.

Creates a new empty list. On name conflict, does nothing and returns the data of an existing list.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**ListWrite**](ListWrite.md)|  | 
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**InlineResponse2002**](inline_response_200_2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsSetupPost**
> interface{} DataListsSetupPost(ctx, csrfToken)
Opt in to use reading lists.

Must precede other list operations.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataListsTeardownPost**
> interface{} DataListsTeardownPost(ctx, csrfToken)
Opt out from using reading lists.

Deletes all data. User needs to opt in again before being able to do anything.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **csrfToken** | **string**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetListEntries**
> InlineResponse2003 GetListEntries(ctx, id, optional)
Get all entries of a given list.

Returns pages contained by the given list. Might be truncated and include a continuation token.  List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**|  | 
 **optional** | ***ReadingListsApiGetListEntriesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a ReadingListsApiGetListEntriesOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **next** | **optional.String**| Continuation parameter from previous request | 
 **sort** | **optional.String**| Sort order - &#x60;name&#x60;: by page title, ascending; - &#x60;updated&#x60;: by last modification date, descending.  | [default to updated]

### Return type

[**InlineResponse2003**](inline_response_200_3.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

