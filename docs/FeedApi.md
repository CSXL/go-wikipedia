# {{classname}}

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AggregatedFeed**](FeedApi.md#AggregatedFeed) | **Get** /feed/featured/{yyyy}/{mm}/{dd} | Aggregated featured content
[**FeedAnnouncementsGet**](FeedApi.md#FeedAnnouncementsGet) | **Get** /feed/announcements | Current announcements to display
[**OnThisDay**](FeedApi.md#OnThisDay) | **Get** /feed/onthisday/{type}/{mm}/{dd} | Events on this day

# **AggregatedFeed**
> Feed AggregatedFeed(ctx, yyyy, mm, dd)
Aggregated featured content

Provides the aggregated feed content for the given date. The endpoint returns the featured article of the day, most read articles for the previous day, news content and the featured image and video of the day.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **yyyy** | **string**| Year the aggregated content is requested for | 
  **mm** | **string**| Month the aggregated content is requested for, 0-padded | 
  **dd** | **string**| Day of the month the aggregated content is requested for, 0-padded | 

### Return type

[**Feed**](feed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **FeedAnnouncementsGet**
> AnnouncementsResponse FeedAnnouncementsGet(ctx, )
Current announcements to display

Gets announcements for display in the official Wikipedia iOS and Android apps.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**AnnouncementsResponse**](announcementsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Announcements/0.2.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OnThisDay**
> OnthisdayResponse OnThisDay(ctx, type_, mm, dd)
Events on this day

Provides events that historically happened on the provided day and month. Supported types of events are:  - All: all of the following  - Selected: a list of a few selected anniversaries which occur on the provided day and month; often the entries are curated for the current year  - Births: a list of birthdays which happened on the provided day and month  - Deaths: a list of deaths which happened on the provided day and month  - Holidays: a list of fixed holidays celebrated on the provided day and month  - Events: a list of significant events which happened on the provided day and month and which are not covered by the other types yet  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **type_** | **string**| Type of events | 
  **mm** | **string**| Month events are requested for, 0-padded | 
  **dd** | **string**| Day of the month events are requested for, 0-padded | 

### Return type

[**OnthisdayResponse**](onthisdayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/onthisday/0.3.3, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

