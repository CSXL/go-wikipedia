# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DataCssMobileTypeGet**](MobileApi.md#DataCssMobileTypeGet) | **Get** /data/css/mobile/{type} | Get CSS for mobile apps.
[**DataI18nTypeGet**](MobileApi.md#DataI18nTypeGet) | **Get** /data/i18n/{type} | Get internationalization info
[**DataJavascriptMobileTypeGet**](MobileApi.md#DataJavascriptMobileTypeGet) | **Get** /data/javascript/mobile/{type} | Get JavaScript for mobileapps
[**GetSections**](MobileApi.md#GetSections) | **Get** /page/mobile-sections/{title} | Get mobile-optimized HTML sections for a title.
[**GetSectionsLead**](MobileApi.md#GetSectionsLead) | **Get** /page/mobile-sections-lead/{title} | Get mobile-optimized HTML lead section and metadata for a title.
[**GetSectionsLeadWithRevision**](MobileApi.md#GetSectionsLeadWithRevision) | **Get** /page/mobile-sections-lead/{title}/{revision} | Get mobile-optimized HTML lead section and metadata for a title.
[**GetSectionsRemaining**](MobileApi.md#GetSectionsRemaining) | **Get** /page/mobile-sections-remaining/{title} | Get non-lead mobile-optimized HTML sections for a title.
[**GetSectionsRemainingWithRevision**](MobileApi.md#GetSectionsRemainingWithRevision) | **Get** /page/mobile-sections-remaining/{title}/{revision} | Get non-lead mobile-optimized HTML sections for a title.
[**GetSectionsWithRevision**](MobileApi.md#GetSectionsWithRevision) | **Get** /page/mobile-sections/{title}/{revision} | Get mobile-optimized HTML sections for a title.

# **DataCssMobileTypeGet**
> interface{} DataCssMobileTypeGet(ctx, type_)
Get CSS for mobile apps.

Gets common CSS mobile apps need to properly display pages using Page Content Service. In most cases all of the types are needed (preferably in this order): * base (Common mobile CSS from ResourceLoader) * site (Site-specific, mobile CSS from ResourceLoader, as defined in MediaWiki\\:Mobile.css) * pcs (CSS for the Page Content Service)  The `base` and `pcs` responses are the same regardless of what domain is used. For these we suggest meta.wikimedia.org.  You can still pass pagelib for type, but this is a legacy version of the CSS for existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **type_** | **string**| The desired CSS bundle | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/CSS/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataI18nTypeGet**
> interface{} DataI18nTypeGet(ctx, type_)
Get internationalization info

Gets internationalization information for the given site. Currently the only supported type is pcs for the Page Content Service.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **type_** | **string**| The desired internationalization bundle | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/i18n/0.0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataJavascriptMobileTypeGet**
> interface{} DataJavascriptMobileTypeGet(ctx, type_)
Get JavaScript for mobileapps

Gets the JavaScript bundle so that clients can have convenient access to that for consuming the page HTML. Amongst other things, * it allows to detect the platform and through that enable platform specific CSS rules, * has code to lazy load images on the page, * code for collapsing and expanding tables.  Valid types are pagelib or pcs. Passing pcs will return the JavaScript for the Page Content Service. Passing pagelib will return a deprecated legacy version of the wikimedia-page-library JavaScript to support existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **type_** | **string**| The desired JavaScript bundle | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/JavaScript/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSections**
> interface{} GetSections(ctx, title, optional)
Get mobile-optimized HTML sections for a title.

Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***MobileApiGetSectionsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSectionsLead**
> interface{} GetSectionsLead(ctx, title, optional)
Get mobile-optimized HTML lead section and metadata for a title.

Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***MobileApiGetSectionsLeadOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsLeadOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSectionsLeadWithRevision**
> interface{} GetSectionsLeadWithRevision(ctx, title, revision, optional)
Get mobile-optimized HTML lead section and metadata for a title.

Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***MobileApiGetSectionsLeadWithRevisionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsLeadWithRevisionOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSectionsRemaining**
> interface{} GetSectionsRemaining(ctx, title, optional)
Get non-lead mobile-optimized HTML sections for a title.

Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
 **optional** | ***MobileApiGetSectionsRemainingOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsRemainingOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSectionsRemainingWithRevision**
> interface{} GetSectionsRemainingWithRevision(ctx, title, revision, optional)
Get non-lead mobile-optimized HTML sections for a title.

Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***MobileApiGetSectionsRemainingWithRevisionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsRemainingWithRevisionOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSectionsWithRevision**
> interface{} GetSectionsWithRevision(ctx, title, revision, optional)
Get mobile-optimized HTML sections for a title.

Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **title** | **string**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: &#x60;Main_Page&#x60;. | 
  **revision** | **int32**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **optional** | ***MobileApiGetSectionsWithRevisionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MobileApiGetSectionsWithRevisionOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **redirect** | **optional.Bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in &#x60;Location&#x60; header and content in the body. To get a 200 response instead, supply &#x60;false&#x60; to the &#x60;redirect&#x60; parameter.  | 
 **acceptLanguage** | **optional.String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: &#x60;sr-el&#x60; for Latin transcription of the Serbian language.  | 

### Return type

[**interface{}**](interface{}.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

