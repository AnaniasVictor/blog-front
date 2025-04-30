# blog.api.PostControllerApi

## Load the API package
```dart
import 'package:blog/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**corrigirOrtografia**](PostControllerApi.md#corrigirortografia) | **POST** /api/post/ortografia | 
[**deletar1**](PostControllerApi.md#deletar1) | **DELETE** /api/post/{id} | 
[**getPostsByUsuario**](PostControllerApi.md#getpostsbyusuario) | **GET** /api/post/usuario/{id} | 
[**listarPostPorId**](PostControllerApi.md#listarpostporid) | **GET** /api/post/{id} | 
[**listarPosts**](PostControllerApi.md#listarposts) | **GET** /api/post | 
[**postar**](PostControllerApi.md#postar) | **POST** /api/post | 


# **corrigirOrtografia**
> Object corrigirOrtografia(body)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();
final body = String(); // String | 

try {
    final result = api_instance.corrigirOrtografia(body);
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->corrigirOrtografia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletar1**
> Object deletar1(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.deletar1(id);
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->deletar1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostsByUsuario**
> List<Post> getPostsByUsuario(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getPostsByUsuario(id);
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->getPostsByUsuario: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List<Post>**](Post.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listarPostPorId**
> Object listarPostPorId(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.listarPostPorId(id);
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->listarPostPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listarPosts**
> Object listarPosts()



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();

try {
    final result = api_instance.listarPosts();
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->listarPosts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postar**
> Object postar(post)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = PostControllerApi();
final post = Post(); // Post | 

try {
    final result = api_instance.postar(post);
    print(result);
} catch (e) {
    print('Exception when calling PostControllerApi->postar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post** | [**Post**](Post.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

