//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Argument Label
 */
/*
              // Parameter Name
func sayHello(name: String) {
   print("Hello, \(name)")
}
                // Actual Parameter/Argument
sayHello(name: "Swift")
        // Argument Label

*/

/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */
// label을 따로 정의해 주지 않으면 name이 Parameter Name인 동시에 Argumment Label이 된다.
// 함수의 가독성을 높이기 위해 사용
// 함수를 호출하면서 Parameter를 전달한다.

func sayHello(name: String) {
   print("Hello, \(name)")
}

sayHello(name: "Swift")

// 동일한 스코프에 동일한 이름의 함수를 정의해도 에러가 나지 않는 것은 Argument Label이 포함되어 있기 때문에 다른 함수로 인식한다.
// sayHello Name, syaHello to라고 읽는다.
func sayHello(to name: String) {
    // print("Hello, \(to)") Argument Label은 함수를 호출할 때 사용하는 이름일 뿐 함수 바디에서 파라미터에 접근할 수는 없다.
    print("Hello, \(name)") // print()함수는 Argument Label을 생략한 형태이다.
}

sayHello(to: "Swift")
sayHello(name: "Swift")

// Arguent Label 생략
func sayHello(_ name: String) {
    print("Hello, \(name)")
}

sayHello("Swift")

// 함수 이름 : 주로 동사포함
// 파라미터 이름 : 주로 명사 사용
// Argument Label : to, with, in 등의 전치자 주로 사용



