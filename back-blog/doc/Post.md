# blog.model.Post

## Load the model package
```dart
import 'package:blog/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**titulo** | **String** |  | [optional] 
**post** | **String** |  | [optional] 
**data** | [**DateTime**](DateTime.md) |  | [optional] 
**tempo** | [**DateTime**](DateTime.md) |  | [optional] 
**comentarios** | [**List<Comment>**](Comment.md) |  | [optional] [default to const []]
**usuario** | [**Usuario**](Usuario.md) |  | [optional] 
**audio** | **List<String>** |  | [optional] [default to const []]
**audioUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


