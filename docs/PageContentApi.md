# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetContentMediaList**](PageContentApi.md#GetContentMediaList) | **Get** /page/media-list/{title} | Get list of media files used on a page.
[**GetContentMobileHtml**](PageContentApi.md#GetContentMobileHtml) | **Get** /page/mobile-html/{title} | Get page content HTML optimized for mobile consumption.
[**GetContentWithRevisionMediaList**](PageContentApi.md#GetContentWithRevisionMediaList) | **Get** /page/media-list/{title}/{revision} | Get list of media files used on a page.
[**GetContentWithRevisionMobileHtml**](PageContentApi.md#GetContentWithRevisionMobileHtml) | **Get** /page/mobile-html/{title}/{revision} | Get page content HTML optimized for mobile consumption.
[**GetFormatRevision**](PageContentApi.md#GetFormatRevision) | **Get** /page/html/{title}/{revision} | Get HTML for a specific title/revision &amp; optionally timeuuid.
[**GetRelatedPages**](PageContentApi.md#GetRelatedPages) | **Get** /page/related/{title} | Get pages related to the given title
[**PageDataParsoidTitleRevisionTidGet**](PageContentApi.md#PageDataParsoidTitleRevisionTidGet) | **Get** /page/data-parsoid/{title}/{revision}/{tid} | Get data-parsoid metadata for a specific title/revision/tid.
[**PageGet**](PageContentApi.md#PageGet) | **Get** /page/ | List page-related API entry points.
[**PageHtmlTitleGet**](PageContentApi.md#PageHtmlTitleGet) | **Get** /page/html/{title} | Get latest HTML for a title.
[**PageHtmlTitlePost**](PageContentApi.md#PageHtmlTitlePost) | **Post** /page/html/{title} | Save a new revision using HTML.
[**PageLintTitleGet**](PageContentApi.md#PageLintTitleGet) | **Get** /page/lint/{title} | Get the linter errors for a specific title/revision.
[**PageLintTitleRevisionGet**](PageContentApi.md#PageLintTitleRevisionGet) | **Get** /page/lint/{title}/{revision} | Get the linter errors for a specific title/revision.
[**PageMobileHtmlOfflineResourcesTitleGet**](PageContentApi.md#PageMobileHtmlOfflineResourcesTitleGet) | **Get** /page/mobile-html-offline-resources/{title} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**PageMobileHtmlOfflineResourcesTitleRevisionGet**](PageContentApi.md#PageMobileHtmlOfflineResourcesTitleRevisionGet) | **Get** /page/mobile-html-offline-resources/{title}/{revision} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**PagePdfTitleFormatGet**](PageContentApi.md#PagePdfTitleFormatGet) | **Get** /page/pdf/{title}/{format} | Get a page as PDF
[**PagePdfTitleFormatTypeGet**](PageContentApi.md#PagePdfTitleFormatTypeGet) | **Get** /page/pdf/{title}/{format}/{type} | Get a page as PDF
[**PagePdfTitleGet**](PageContentApi.md#PagePdfTitleGet) | **Get** /page/pdf/{title} | Get a page as PDF
[**PageRandomFormatGet**](PageContentApi.md#PageRandomFormatGet) | **Get** /page/random/{format} | Get content for a random page
[**PageSegmentsTitleGet**](PageContentApi.md#PageSegmentsTitleGet) | **Get** /page/segments/{title} | Fetches a segmented page to be used in machine translation
[**PageSegmentsTitleRevisionGet**](PageContentApi.md#PageSegmentsTitleRevisionGet) | **Get** /page/segments/{title}/{revision} | Fetches a segmented page to be used in machine translation
[**PageSummaryTitleGet**](PageContentApi.md#PageSummaryTitleGet) | **Get** /page/summary/{title} | Get basic metadata and simplified article introduction.
[**PageTitleTitleGet**](PageContentApi.md#PageTitleTitleGet) | **Get** /page/title/{title} | Get revision metadata for a title.
[**PageTitleTitleRevisionGet**](PageContentApi.md#PageTitleTitleRevisionGet) | **Get** /page/title/{title}/{revision} | Get revision metadata for a title.
[**PageWikitextTitlePost**](PageContentApi.md#PageWikitextTitlePost) | **Post** /page/wikitext/{title} | Save a new revision of a page using Wikitext.

# **GetContentMediaList**
> MediaList GetContentMediaList(ctx, title, optional)
Get list of media files used on a page.

Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***PageContentApiGetContentMediaListOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiGetContentMediaListOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

[**MediaList**](media_list.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Media/1.3.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetContentMobileHtml**
> string GetContentMobileHtml(ctx, title, optional)
Get page content HTML optimized for mobile consumption.

Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***PageContentApiGetContentMobileHtmlOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiGetContentMobileHtmlOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.2.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetContentWithRevisionMediaList**
> MediaList GetContentWithRevisionMediaList(ctx, title, revision, optional)
Get list of media files used on a page.

Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***PageContentApiGetContentWithRevisionMediaListOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiGetContentWithRevisionMediaListOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

[**MediaList**](media_list.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Media/1.3.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetContentWithRevisionMobileHtml**
> string GetContentWithRevisionMobileHtml(ctx, title, revision, optional)
Get page content HTML optimized for mobile consumption.

Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***PageContentApiGetContentWithRevisionMobileHtmlOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiGetContentWithRevisionMobileHtmlOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.2.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetFormatRevision**
> string GetFormatRevision(ctx, title, revision, optional)
Get HTML for a specific title/revision & optionally timeuuid.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The revision | 
 **optional** | ***PageContentApiGetFormatRevisionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiGetFormatRevisionOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **stash** | **optional.Bool**| Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetRelatedPages**
> Related GetRelatedPages(ctx, title)
Get pages related to the given title

Returns summaries for 20 pages related to the given page. Summaries include page title, namespace and id along with short text description of the page and a thumbnail.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**Related**](related.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageDataParsoidTitleRevisionTidGet**
> DataParsoid PageDataParsoidTitleRevisionTidGet(ctx, title, revision, tid, optional)
Get data-parsoid metadata for a specific title/revision/tid.

Data-parsoid is metadata used by [Parsoid](https://www.mediawiki.org/wiki/Parsoid) to support clean round-tripping conversions between HTML and Wikitext. Among other things, it contains the original Wikitext offsets of each HTML element, keyed by element ID. The format is unstable.  The metadata in data-parsoid is specific to a specific HTML render. For this reason, you need to supply the exact `revision` and `tid` as provided in the `ETag` header of the HTML response.  Stability: [Stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The revision | 
  **tid** | **string**| The revision&#x27;s time ID | 
 **optional** | ***PageContentApiPageDataParsoidTitleRevisionTidGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiPageDataParsoidTitleRevisionTidGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 

### Return type

[**DataParsoid**](data-parsoid.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/data-parsoid/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageGet**
> Listing PageGet(ctx, )
List page-related API entry points.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Listing**](listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageHtmlTitleGet**
> string PageHtmlTitleGet(ctx, title, optional)
Get latest HTML for a title.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***PageContentApiPageHtmlTitleGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiPageHtmlTitleGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **stash** | **optional.Bool**| Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageHtmlTitlePost**
> interface{} PageHtmlTitlePost(ctx, baseEtag, html, csrfToken, comment, isMinor, isBot, title)
Save a new revision using HTML.

Save a new revision of a page given in [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) format.  For new pages, or when editting the latest revision of a page, the `base_etag` parameter should be left empty. For editing old revisions, it should contain the `ETag` header of the revision the edit is derived from.  The latest page revision ETag header could be provided in the If-Match header to detect edit conflicts. If the new page is created, appropriate user cookies must be provided.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **baseEtag** | **string**|  | 
  **html** | **string**|  | 
  **csrfToken** | **string**|  | 
  **comment** | **string**|  | 
  **isMinor** | **bool**|  | 
  **isBot** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageLintTitleGet**
> interface{} PageLintTitleGet(ctx, title)
Get the linter errors for a specific title/revision.

Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageLintTitleRevisionGet**
> interface{} PageLintTitleRevisionGet(ctx, title, revision)
Get the linter errors for a specific title/revision.

Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The revision | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **PagePdfTitleFormatGet**
> string PagePdfTitleFormatGet(ctx, title, format)
Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **format** | **string**| PDF format | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PagePdfTitleFormatTypeGet**
> string PagePdfTitleFormatTypeGet(ctx, title, format, type_)
Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **format** | **string**| PDF format | 
  **type_** | **string**| PDF type - &#x60;mobile&#x60; (optimized for reading on mobile devices) or &#x60;desktop&#x60; (regular PDF). &#x60;desktop&#x60; is the default render mode and it will used if param &#x60;type&#x60; is not passed | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PagePdfTitleGet**
> string PagePdfTitleGet(ctx, title)
Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

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
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageRandomFormatGet**
> Problem PageRandomFormatGet(ctx, format)
Get content for a random page

Redirects the client to the URI for the desired format for a random page title.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **format** | **string**| The desired return format | 

### Return type

[**Problem**](problem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Random/0.7.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageSegmentsTitleGet**
> InlineResponse200 PageSegmentsTitleGet(ctx, title)
Fetches a segmented page to be used in machine translation

Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageSegmentsTitleRevisionGet**
> InlineResponse200 PageSegmentsTitleRevisionGet(ctx, title, revision)
Fetches a segmented page to be used in machine translation

Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The revision id | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageSummaryTitleGet**
> Summary PageSummaryTitleGet(ctx, title, optional)
Get basic metadata and simplified article introduction.

The summary response includes an extract of the first paragraph of the page in plain text and HTML as well as the type of page. This is useful for page previews (fka. Hovercards, aka. Popups) on the web and link previews in the apps.  Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***PageContentApiPageSummaryTitleGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PageContentApiPageSummaryTitleGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**Summary**](summary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Summary/1.4.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageTitleTitleGet**
> Revision PageTitleTitleGet(ctx, title)
Get revision metadata for a title.

Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

[**Revision**](revision.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageTitleTitleRevisionGet**
> Revision PageTitleTitleRevisionGet(ctx, title, revision)
Get revision metadata for a title.

Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| The revision id | 

### Return type

[**Revision**](revision.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PageWikitextTitlePost**
> PageWikitextTitlePost(ctx, baseEtag, wikitext, csrfToken, comment, isMinor, isBot, title)
Save a new revision of a page using Wikitext.

For new pages, or when editting the latest revision of a page, the `base_etag` parameter should be left empty. For editing old revisions, it should contain the ETag header of the revision the edit is derived from.  The latest page revision ETag header should be provided in the If-Match header to detect edit conflicts. If the new page is created, appropriate user cookies must be provided.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **baseEtag** | **string**|  | 
  **wikitext** | **string**|  | 
  **csrfToken** | **string**|  | 
  **comment** | **string**|  | 
  **isMinor** | **bool**|  | 
  **isBot** | **bool**|  | 
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

