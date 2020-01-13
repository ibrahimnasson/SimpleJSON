SimpleJSON
==========
Simple header only C++ JSON library

Based on: https://github.com/nbsdx/SimpleJSON/ 

Original Author: nbsdx (Neil)

Original License: Do what the fuck you want public license

This version includes new features, performancefixes, documentation and bugfixes added by <giri@nwrk.biz>.

## License

"THE BEER-WARE LICENSE" (Revision 42):
<giri@nwrk.biz> extended and modified this file. As long as you retain this notice you  
can do whatever you want with this stuff. If we meet some day, and you think  
this stuff is worth it, you can buy me a beer in return Daniel Giritzer

## Download

[Click here to download](https://raw.githubusercontent.com/nwrkbiz/SimpleJSON/master/JSON.h)

## About

SimpleJSON is a lightweight JSON library for exporting data in JSON format from C++. By taking advantage of templates and operator overloading on the backend, you're able to create and work with JSON objects right away, just as you would expect from a language such as JavaScript. SimpleJSON is a single C++ Header file, "json.hpp". Feel free to download this file on its own, and include it in your project. No other requirements!

#### Platforms

SimpleJSON should work on any platform; it's only requirement is a C++17 compatible compiler. The tests are tailored for linux, but could be ported to any platform with python support and a C++17 compiler.

## API Documentation

You can find the API [over here](https://nwrkbiz.github.io/SimpleJSON/html/classjson_1_1JSON.html)

## Example

More examples can be found in the 'examples' directory or in the [API documentetaion](https://nwrkbiz.github.io/SimpleJSON/html/classjson_1_1JSON.html#details).

```cpp
#include "JSON.h"

int main() {
  json::JSON obj;
  // Create a new Array as a field of an Object.
  obj["array"] = json::Array( true, "Two", 3, 4.0 );
  // Create a new Object as a field of another Object.
  obj["obj"] = json::Object();
  // Assign to one of the inner object's fields
  obj["obj"]["inner"] = "Inside";
  
  // We don't need to specify the type of the JSON object:
  obj["new"]["some"]["deep"]["key"] = "Value";
  obj["array2"].append( false, "three" );
  
  // We can also parse a string into a JSON object:
  obj["parsed"] = JSON::Load( "[ { \"Key\" : \"Value\" }, false ]" );
  
  std::cout << obj << std::endl;
}
```
Output:
``` 
{
  "array" : [true, "Two", 3, 4.000000],
  "array2" : [false, "three"],
  "new" : {
    "some" : {
      "deep" : {
        "key" : "Value"
      }
    }
  },
  "obj" : {
    "inner" : "Inside"
  },
  "parsed" : [{
      "Key" : "Value"
    }, false]
}
```

This example can also be written another way:
```cpp
#include "JSON.h"
#include <iostream>

using json::JSON;

int main() {
    JSON obj = {
        "array", json::Array( true, "Two", 3, 4.0 ),
        "obj", {
            "inner", "Inside"
        },
        "new", { 
            "some", { 
                "deep", { 
                    "key", "Value" 
                } 
            } 
        },
        "array2", json::Array( false, "three" )
    };

    std::cout << obj << std::endl;
```
Sadly, we don't have access to the : character in C++, so we can't use that to seperate key-value pairs, but by using commas, we can achieve a very similar effect. The other point you might notice, is that we have to explictly create arrays. This is a limitation of C++'s operator overloading rules, so we can't use the [] operator to define the array.
