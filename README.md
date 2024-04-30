# time_daily_task

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
<video autoplay loop style="width:100%; height: auto; position:absolute; z-index: -1;">
  <source src="https://github-production-user-asset-6210df.s3.amazonaws.com/144161200/326678138-171c7d04-f81b-44ed-a0a1-0d16879472ba.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240430%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240430T051439Z&X-Amz-Expires=300&X-Amz-Signature=b81c67fecc51b0cff3dcd9dd5f563900b5f6d24ee671f86439b321445e2ec46c&X-Amz-SignedHeaders=host&actor_id=144161200&key_id=0&repo_id=793709377" type="video/mp4" />
<!--   <source src="http://syddev.com/jquery.videoBG/assets/tunnel_animation.ogv" type="application/ogg" /> -->
<!--   <img src="http://syddev.com/jquery.videoBG/assets/tunnel_animation.jpg"> -->
</video>
<h2>➡️5.1 Flutter Buttons </h2>
<hr>
<p>
<a href ="">
<img src="https://github.com/Prafulpatnecha/time_daily_task/assets/144161200/56c2a60a-a104-4eec-846b-af14cc45b7cd" width="22%" Height="35%">
</a>
</p>
<hr>
https://github.com/Prafulpatnecha/time_daily_task/assets/144161200/86311063-83f8-432f-8a5e-e485af2be839


# 5.2 Asynchronous Programming
#


## What Is Asynchronous Programming?

Asynchronous Programming is a programming  paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next tasks.

## What is Future Class?

In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available.

## What is Duration calss & Future.delayed() constructor with Example?

delayed Flutter is a constructor that creates a future which run its computation after adelay.The Future.delayed() constructor has two arguments.
## Future.delayed() Example


```
void main()
{
  print('Jai Shree Ram');
  Future(() => print('Jai Shree Krishna'));
  Future.delayed(Duration(seconds: 3),() {
    print('Jai Jai Shree Ram');
  },);
  print('Om Namah Shivaya');
}
```

```
OUTPUT:
Jai Shree Ram
Om Namah Shivaya     
Jai Shree Krishna    
Jai Jai Shree Ram
```

## What is the Use of the async & await keyword?
```
void main()
async{
  print('Jai Shree Ram');
  Future(() => print('Jai Shree Krishna'));
  await Future.delayed(Duration(seconds: 3),() {
    print('Jai Veer Hanuman');
  },);
  Future.delayed(Duration(seconds: 3),() {
    print('Jai Jai Shree Ram');
  },);
  print('Om Namah Shivaya');
}
```
```
OUTPUT:
Jai Shree Ram
Jai Shree Krishna    
Jai Veer Hanuman
Om Namah Shivaya     
Jai Jai Shree Ram
```

## What is Recursion ? With Example./What is Timer.periodic and use with Example?

It is similar to recursion where a method calls itself as often as necessary. The method that calls itself is called as recursive method and the constructor that calls itself is called as recursive constructor.

```
import 'dart:async';

void main()
async{
  print('Jai Shree Ram');
  Future(() => print('Jai Shree Krishna'));
  Timer(Duration(seconds: 2), () {
    print('Jai Shree Hanuman');
   });
  Future.delayed(Duration(seconds: 3),() {
    print('Jai Jai Shree Ram');
  },);
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('Ram');
   });
  print('Om Namah Shivaya');
}
```
```
OUTPUT:
Jai Shree Ram
Om Namah Shivaya     
Jai Shree Krishna    
Ram
Jai Shree Hanuman
Ram
Jai Jai Shree Ram
Ram
Ram
```
#
## What is Timer class with example ?

```
import 'dart:async';

void main()
async{
  print('Jai Shree Ram');
  Future(() => print('Jai Shree Krishna'));
  Timer(Duration(seconds: 2), () {
    print('Jai Shree Hanuman');
   });
  Future.delayed(Duration(seconds: 3),() {
    print('Jai Jai Shree Ram');
  },);
  print('Om Namah Shivaya');
}
```
```
OUTPUT:
Jai Shree Ram
Om Namah Shivaya     
Jai Shree Krishna    
Jai Shree Hanuman
Jai Jai Shree Ram
```
