# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCitation**](CitationApi.md#GetCitation) | **Get** /data/citation/{format}/{query} | Get citation data given an article identifier.

# **GetCitation**
> Result GetCitation(ctx, format, query, optional)
Get citation data given an article identifier.

Generates citation data given a URL, DOI, PMID, ISBN, or PMCID.  See more at [Citoid service documentation](https://www.mediawiki.org/wiki/Citoid)  The citation data can be requested in one of the following formats:   - `mediawiki`: format designed for MediaWiki to be used with `templateData`.     Uses [Zotero field names](https://aurimasv.github.io/z2csl/typeMap.xml).   - `mediawiki-basefields`: `mediawiki` format with Zotero `basefield` field names.   - `zotero`: format used by [Zotero](https://www.zotero.org/).   - `bibtex`: format used in conjunction with LaTeX documents.     See [bibtex.org](http://www.bibtex.org/).   - `wikibase`: format designed for [Wikibase](https://www.mediawiki.org/wiki/Extension:Wikibase_Repository).  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **format** | **string**| The format to use for the resulting citation data | 
  **query** | **string**| URL of an article, DOI, ISBN, PMCID or PMID in the URL-encoded format. Note that on the Swagger-UI doc page you don&#x27;t need to URI-encode the parameter manually, it will be done by the docs engine.  | 
 **optional** | ***CitationApiGetCitationOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a CitationApiGetCitationOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **acceptLanguage** | **optional.String**| For some articles the result depends on the &#x60;Accept-Language&#x60; header, so provide it if localized content is required.  | 

### Return type

[**Result**](result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8;, application/x-bibtex; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

