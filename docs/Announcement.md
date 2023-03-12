# Announcement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique ID of the announcement | [default to null]
**Type_** | **string** | The type of announcement. Possible values are \&quot;survey\&quot; or \&quot;fundraising\&quot; | [default to null]
**StartTime** | **string** | The date to begin showing the announcement | [default to null]
**EndTime** | **string** | The date to stop showing the announcement | [default to null]
**Platforms** | **[]string** | An array of platforms to display the announcement. Possible values are \&quot;iOSApp\&quot; or \&quot;AndroidApp\&quot; | [default to null]
**Text** | **string** | The text of the announcement | [default to null]
**Image** | **string** | The URL of the image for the announcement | [optional] [default to null]
**Action** | [***Action**](action.md) |  | [optional] [default to null]
**CaptionHTML** | **string** | HTML to display below the announcement. Usually a privacy statment and link to a policy | [optional] [default to null]
**Countries** | **[]string** | An array of country codes in which to display the announcement. Clients should derive the country from &#x27;GeoIP&#x27; portion of the Set-Cookie header  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

