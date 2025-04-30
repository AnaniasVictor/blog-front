# blog.api.CommentControllerApi

## Load the API package
```dart
import 'package:blog/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**comentar**](CommentControllerApi.md#comentar) | **POST** /api/comentario | 
[**deletar2**](CommentControllerApi.md#deletar2) | **DELETE** /api/comentario/{id} | 
[**getCommentsByPost**](CommentControllerApi.md#getcommentsbypost) | **GET** /api/comentario/post/{id} | 
[**listarComentarioPorId**](CommentControllerApi.md#listarcomentarioporid) | **GET** /api/comentario/{id} | 
[**listarComentarios**](CommentControllerApi.md#listarcomentarios) | **GET** /api/comentario | 


# **comentar**
> Object comentar(comment)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = CommentControllerApi();
final comment = Comment(); // Comment | 

try {
    final result = api_instance.comentar(comment);
    print(result);
} catch (e) {
    print('Exception when calling CommentControllerApi->comentar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comment** | [**Comment**](Comment.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletar2**
> Object deletar2(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = CommentControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.deletar2(id);
    print(result);
} catch (e) {
    print('Exception when calling CommentControllerApi->deletar2: $e\n');
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

# **getCommentsByPost**
> Object getCommentsByPost(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = CommentControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getCommentsByPost(id);
    print(result);
} catch (e) {
    print('Exception when calling CommentControllerApi->getCommentsByPost: $e\n');
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

# **listarComentarioPorId**
> Object listarComentarioPorId(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = CommentControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.listarComentarioPorId(id);
    print(result);
} catch (e) {
    print('Exception when calling CommentControllerApi->listarComentarioPorId: $e\n');
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

# **listarComentarios**
> Object listarComentarios()



### Example
```dart
import 'package:blog/api.dart';

final api_instance = CommentControllerApi();

try {
    final result = api_instance.listarComentarios();
    print(result);
} catch (e) {
    print('Exception when calling CommentControllerApi->listarComentarios: $e\n');
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

