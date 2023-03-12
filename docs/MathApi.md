# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MediaMathCheckTypePost**](MathApi.md#MediaMathCheckTypePost) | **Post** /media/math/check/{type} | Check and normalize a TeX formula.
[**MediaMathFormulaHashGet**](MathApi.md#MediaMathFormulaHashGet) | **Get** /media/math/formula/{hash} | Get a previously-stored formula
[**MediaMathRenderFormatHashGet**](MathApi.md#MediaMathRenderFormatHashGet) | **Get** /media/math/render/{format}/{hash} | Get rendered formula in the given format.

# **MediaMathCheckTypePost**
> interface{} MediaMathCheckTypePost(ctx, q, type_)
Check and normalize a TeX formula.

Checks the supplied TeX formula for correctness and returns the normalised formula representation as well as information about identifiers. Available types are tex and inline-tex. The response contains the `x-resource-location` header which can be used to retrieve the render of the checked formula in one of the supported rendering formats. Just append the value of the header to `/media/math/{format}/` and perform a GET request against that URL.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **q** | **string**|  | 
  **type_** | **string**| The input type of the given formula; can be tex or inline-tex | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MediaMathFormulaHashGet**
> interface{} MediaMathFormulaHashGet(ctx, hash)
Get a previously-stored formula

Returns the previously-stored formula via `/media/math/check/{type}` for the given hash.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **hash** | **string**| The hash string of the previous POST data | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **MediaMathRenderFormatHashGet**
> string MediaMathRenderFormatHashGet(ctx, format, hash)
Get rendered formula in the given format.

Given a request hash, renders a TeX formula into its mathematic representation in the given format. When a request is issued to the `/media/math/check/{format}` POST endpoint, the response contains the `x-resource-location` header denoting the hash ID of the POST data. Once obtained, this endpoint has to be used to obtain the actual render.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **format** | **string**| The output format; can be svg or mml | 
  **hash** | **string**| The hash string of the previous POST data | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/svg+xml, application/mathml+xml, image/png, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

