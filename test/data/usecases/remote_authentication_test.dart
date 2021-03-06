import 'dart:io';

import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';


class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({
    required this.httpClient,
    required this.url  
  });
  Future<void> auth() async {
    await httpClient.request(url: url, method: 'post');
  }
}

abstract class HttpClient {
  Future<void> request ({
     url,
     method
  });
}

class HttpClientSpy extends Mock implements HttpClient  {}
void main() async {
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;

  httpClient = HttpClientSpy();
  url = faker.internet.httpUrl();
  sut = RemoteAuthentication(httpClient: httpClient, url: url);
  
  test('Should call HttpClient with correct values', () async {
    
    await sut.auth();

    verify(httpClient.request(
      url : url,
      method : 'post'
      ));
  });
}