# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PageMobileHtmlOfflineResourcesTitleGet**](OfflineApi.md#PageMobileHtmlOfflineResourcesTitleGet) | **Get** /page/mobile-html-offline-resources/{title} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**PageMobileHtmlOfflineResourcesTitleRevisionGet**](OfflineApi.md#PageMobileHtmlOfflineResourcesTitleRevisionGet) | **Get** /page/mobile-html-offline-resources/{title}/{revision} | Get styles and scripts for offline consumption of mobile-html-formatted pages

# **PageMobileHtmlOfflineResourcesTitleGet**
> string PageMobileHtmlOfflineResourcesTitleGet(ctx, title)
Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageMobileHtmlOfflineResourcesTitleRevisionGet**
> string PageMobileHtmlOfflineResourcesTitleRevisionGet(ctx, title, revision)
Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

