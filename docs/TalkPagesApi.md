# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PageTalkTitleGet**](TalkPagesApi.md#PageTalkTitleGet) | **Get** /page/talk/{title} | Get structured talk page contents
[**PageTalkTitleRevisionGet**](TalkPagesApi.md#PageTalkTitleRevisionGet) | **Get** /page/talk/{title}/{revision} | Get structured talk page contents

# **PageTalkTitleGet**
> string PageTalkTitleGet(ctx, title, optional)
Get structured talk page contents

Gets structured talk page contents for the provided title.  Stability: [experimental](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***TalkPagesApiPageTalkTitleGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TalkPagesApiPageTalkTitleGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Talk/0.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageTalkTitleRevisionGet**
> string PageTalkTitleRevisionGet(ctx, title, revision, optional)
Get structured talk page contents

Gets structured talk page contents for the provided title.  Stability: [experimental](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***TalkPagesApiPageTalkTitleRevisionGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TalkPagesApiPageTalkTitleRevisionGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Talk/0.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

