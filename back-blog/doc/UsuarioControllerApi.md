# blog.api.UsuarioControllerApi

## Load the API package
```dart
import 'package:blog/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cadastrar**](UsuarioControllerApi.md#cadastrar) | **POST** /api/usuario/cadastro | 
[**deletar**](UsuarioControllerApi.md#deletar) | **DELETE** /api/usuario/{id} | 
[**listarUsuarioPorId**](UsuarioControllerApi.md#listarusuarioporid) | **GET** /api/usuario/{id} | 
[**listarUsuarios**](UsuarioControllerApi.md#listarusuarios) | **GET** /api/usuario | 
[**login**](UsuarioControllerApi.md#login) | **POST** /api/usuario/login | 


# **cadastrar**
> Object cadastrar(usuario)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = UsuarioControllerApi();
final usuario = Usuario(); // Usuario | 

try {
    final result = api_instance.cadastrar(usuario);
    print(result);
} catch (e) {
    print('Exception when calling UsuarioControllerApi->cadastrar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usuario** | [**Usuario**](Usuario.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletar**
> Object deletar(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = UsuarioControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.deletar(id);
    print(result);
} catch (e) {
    print('Exception when calling UsuarioControllerApi->deletar: $e\n');
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

# **listarUsuarioPorId**
> Object listarUsuarioPorId(id)



### Example
```dart
import 'package:blog/api.dart';

final api_instance = UsuarioControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.listarUsuarioPorId(id);
    print(result);
} catch (e) {
    print('Exception when calling UsuarioControllerApi->listarUsuarioPorId: $e\n');
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

# **listarUsuarios**
> Object listarUsuarios()



### Example
```dart
import 'package:blog/api.dart';

final api_instance = UsuarioControllerApi();

try {
    final result = api_instance.listarUsuarios();
    print(result);
} catch (e) {
    print('Exception when calling UsuarioControllerApi->listarUsuarios: $e\n');
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

# **login**
> AuthResponseDTO login(authRequestDTO)



Método utilizado para realizar a inclusão de um entidade

### Example
```dart
import 'package:blog/api.dart';

final api_instance = UsuarioControllerApi();
final authRequestDTO = AuthRequestDTO(); // AuthRequestDTO | 

try {
    final result = api_instance.login(authRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling UsuarioControllerApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRequestDTO** | [**AuthRequestDTO**](AuthRequestDTO.md)|  | 

### Return type

[**AuthResponseDTO**](AuthResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

