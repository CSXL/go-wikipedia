# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DoDict**](TransformsApi.md#DoDict) | **Get** /transform/word/from/{from}/{word} | Fetch the dictionary meaning of a word
[**DoDictProvider**](TransformsApi.md#DoDictProvider) | **Get** /transform/word/from/{from}/{word}/{provider} | Fetch the dictionary meaning of a word
[**DoMT**](TransformsApi.md#DoMT) | **Post** /transform/html/from/{from} | Machine-translate content
[**DoMTProvider**](TransformsApi.md#DoMTProvider) | **Post** /transform/html/from/{from}/{provider} | Machine-translate content
[**TransformHtmlToWikitextPost**](TransformsApi.md#TransformHtmlToWikitextPost) | **Post** /transform/html/to/wikitext | Transform HTML to Wikitext
[**TransformHtmlToWikitextTitlePost**](TransformsApi.md#TransformHtmlToWikitextTitlePost) | **Post** /transform/html/to/wikitext/{title} | Transform HTML to Wikitext
[**TransformHtmlToWikitextTitleRevisionPost**](TransformsApi.md#TransformHtmlToWikitextTitleRevisionPost) | **Post** /transform/html/to/wikitext/{title}/{revision} | Transform HTML to Wikitext
[**TransformWikitextToHtmlPost**](TransformsApi.md#TransformWikitextToHtmlPost) | **Post** /transform/wikitext/to/html | Transform Wikitext to HTML
[**TransformWikitextToHtmlTitlePost**](TransformsApi.md#TransformWikitextToHtmlTitlePost) | **Post** /transform/wikitext/to/html/{title} | Transform Wikitext to HTML
[**TransformWikitextToHtmlTitleRevisionPost**](TransformsApi.md#TransformWikitextToHtmlTitleRevisionPost) | **Post** /transform/wikitext/to/html/{title}/{revision} | Transform Wikitext to HTML
[**TransformWikitextToLintPost**](TransformsApi.md#TransformWikitextToLintPost) | **Post** /transform/wikitext/to/lint | Check Wikitext for lint errors
[**TransformWikitextToLintTitlePost**](TransformsApi.md#TransformWikitextToLintTitlePost) | **Post** /transform/wikitext/to/lint/{title} | Check Wikitext for lint errors
[**TransformWikitextToLintTitleRevisionPost**](TransformsApi.md#TransformWikitextToLintTitleRevisionPost) | **Post** /transform/wikitext/to/lint/{title}/{revision} | Check Wikitext for lint errors
[**TransformWikitextToMobileHtml**](TransformsApi.md#TransformWikitextToMobileHtml) | **Post** /transform/wikitext/to/mobile-html/{title} | Transform Wikitext to Mobile HTML

# **DoDict**
> CxDict DoDict(ctx, from, word)
Fetch the dictionary meaning of a word

Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **from** | **string**| The source language code | 
  **word** | **string**| The word to lookup | 

### Return type

[**CxDict**](cx_dict.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DoDictProvider**
> CxDict DoDictProvider(ctx, from, word, provider)
Fetch the dictionary meaning of a word

Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **from** | **string**| The source language code | 
  **word** | **string**| The word to lookup | 
  **provider** | **string**| The dictionary provider id | 

### Return type

[**CxDict**](cx_dict.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DoMT**
> CxMt DoMT(ctx, html, from)
Machine-translate content

Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **html** | **string**|  | 
  **from** | **string**| The source language code | 

### Return type

[**CxMt**](cx_mt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DoMTProvider**
> CxMt DoMTProvider(ctx, html, from, provider)
Machine-translate content

Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **html** | **string**|  | 
  **from** | **string**| The source language code | 
  **provider** | **string**| The machine translation provider id | 

### Return type

[**CxMt**](cx_mt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformHtmlToWikitextPost**
> string TransformHtmlToWikitextPost(ctx, html, scrubWikitext, optional)
Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **html** | **string**|  | 
  **scrubWikitext** | **bool**|  | 
 **optional** | ***TransformsApiTransformHtmlToWikitextPostOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TransformsApiTransformHtmlToWikitextPostOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **ifMatch** | **optional.**| The &#x60;ETag&#x60; header of the original render indicating it&#x27;s revision and timeuuid. Required if both &#x60;title&#x60; and &#x60;revision&#x60; parameters are present.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformHtmlToWikitextTitlePost**
> string TransformHtmlToWikitextTitlePost(ctx, html, scrubWikitext, title, optional)
Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **html** | **string**|  | 
  **scrubWikitext** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***TransformsApiTransformHtmlToWikitextTitlePostOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TransformsApiTransformHtmlToWikitextTitlePostOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **ifMatch** | **optional.**| The &#x60;ETag&#x60; header of the original render indicating it&#x27;s revision and timeuuid. Required if both &#x60;title&#x60; and &#x60;revision&#x60; parameters are present.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformHtmlToWikitextTitleRevisionPost**
> string TransformHtmlToWikitextTitleRevisionPost(ctx, html, scrubWikitext, title, revision, optional)
Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **html** | **string**|  | 
  **scrubWikitext** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The page revision | 
 **optional** | ***TransformsApiTransformHtmlToWikitextTitleRevisionPostOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TransformsApiTransformHtmlToWikitextTitleRevisionPostOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **ifMatch** | **optional.**| The &#x60;ETag&#x60; header of the original render indicating it&#x27;s revision and timeuuid. Required if both &#x60;title&#x60; and &#x60;revision&#x60; parameters are present.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToHtmlPost**
> string TransformWikitextToHtmlPost(ctx, wikitext, bodyOnly, stash)
Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **bodyOnly** | **bool**|  | 
  **stash** | **bool**|  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToHtmlTitlePost**
> string TransformWikitextToHtmlTitlePost(ctx, wikitext, bodyOnly, stash, title)
Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **bodyOnly** | **bool**|  | 
  **stash** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToHtmlTitleRevisionPost**
> string TransformWikitextToHtmlTitleRevisionPost(ctx, wikitext, bodyOnly, stash, title, revision)
Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **bodyOnly** | **bool**|  | 
  **stash** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The page revision | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToLintPost**
> interface{} TransformWikitextToLintPost(ctx, wikitext, body)
Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **body** | [**ToLintBody1**](ToLintBody1.md)|  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToLintTitlePost**
> interface{} TransformWikitextToLintTitlePost(ctx, wikitext, title)
Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToLintTitleRevisionPost**
> interface{} TransformWikitextToLintTitleRevisionPost(ctx, wikitext, title, revision)
Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The page revision | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **TransformWikitextToMobileHtml**
> string TransformWikitextToMobileHtml(ctx, wikitext, title, optional)
Transform Wikitext to Mobile HTML

Transform wikitext to Mobile HTML.  - Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **wikitext** | **string**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***TransformsApiTransformWikitextToMobileHtmlOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a TransformsApiTransformWikitextToMobileHtmlOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **acceptLanguage** | **optional.**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 
 **outputMode** | **optional.**| Output mode for mobile-html. Default is &#x60;editPreview&#x60;. | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

