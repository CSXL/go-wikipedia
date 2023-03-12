# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DataRecommendationArticleCreationMorelikeSeedArticleGet**](RecommendationApi.md#DataRecommendationArticleCreationMorelikeSeedArticleGet) | **Get** /data/recommendation/article/creation/morelike/{seed_article} | Recommend missing articles
[**DataRecommendationArticleCreationTranslationFromLangGet**](RecommendationApi.md#DataRecommendationArticleCreationTranslationFromLangGet) | **Get** /data/recommendation/article/creation/translation/{from_lang} | Recommend articles for translation.
[**DataRecommendationArticleCreationTranslationFromLangSeedArticleGet**](RecommendationApi.md#DataRecommendationArticleCreationTranslationFromLangSeedArticleGet) | **Get** /data/recommendation/article/creation/translation/{from_lang}/{seed_article} | Recommend articles for translation.

# **DataRecommendationArticleCreationMorelikeSeedArticleGet**
> []MorelikeResultInner DataRecommendationArticleCreationMorelikeSeedArticleGet(ctx, seedArticle)
Recommend missing articles

Recommends articles similar to the seed article but are missing from the domain language Wikipedia.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **seedArticle** | **string**| The article title used to search similar but missing articles | 

### Return type

[**[]MorelikeResultInner**](array.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataRecommendationArticleCreationTranslationFromLangGet**
> RecommendationResult DataRecommendationArticleCreationTranslationFromLangGet(ctx, fromLang, optional)
Recommend articles for translation.

Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **fromLang** | **string**| The source language code | 
 **optional** | ***RecommendationApiDataRecommendationArticleCreationTranslationFromLangGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a RecommendationApiDataRecommendationArticleCreationTranslationFromLangGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **count** | **optional.Int32**| The max number of articles to return | [default to 24]

### Return type

[**RecommendationResult**](recommendation_result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DataRecommendationArticleCreationTranslationFromLangSeedArticleGet**
> RecommendationResult DataRecommendationArticleCreationTranslationFromLangSeedArticleGet(ctx, fromLang, seedArticle, optional)
Recommend articles for translation.

Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **fromLang** | **string**| The source language code | 
  **seedArticle** | **string**| The article to use as a search seed | 
 **optional** | ***RecommendationApiDataRecommendationArticleCreationTranslationFromLangSeedArticleGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a RecommendationApiDataRecommendationArticleCreationTranslationFromLangSeedArticleGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **count** | **optional.Int32**| The max number of articles to return | [default to 24]

### Return type

[**RecommendationResult**](recommendation_result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

