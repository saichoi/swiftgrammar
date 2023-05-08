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
 # Function Types
 ![ftype](ftype.png)
 */

// First-class Citizen
// 1. 변수나 상수에 저장할 수 있다.
// 2. 파라미터로 전달할 수 있다.
// 3. 함수에서 리턴할 수 있다.

// () = void : 비어있는 티플, 파라미터가 없다, 리턴형이 없다.
// 함수 선언 문법과 구조는 같지만 Function Type에서는 리턴 형이 없어도 생략할 수 없다.

// 1. 파라미터가 없는 경우
func sayHello() {
    print("Hello, Swift")
}

let f1 = sayHello

f1()

// 2. 파라미터가 있는 경우
func printHello(with name: String) {
    print("hello, \(name)")
}

let f2: (String) -> () = printHello(with:)
let f3 = printHello(with:)

// 상수에 저장된 함수를 호출할 때는 Argument Label을 쓰지 않는다.
f3("World")
//f3(with: "World")

// 3. 파라미터 여러개인 경우
func add(a: Int, b: Int) -> Int {
    return a + b
}

var f4: (Int, Int) -> Int = add(a:b:)

f4(1,2)

// 4. 와일드카드 패턴 : Argument Label 생략한 경우
func add(_ a: Int, with b: Int) -> Int {
    return a + b
}

f4 = add(_:with:)

// 5. 입출력 파라미터로 선언한 경우
func swapNumbers(_ a: inout Int, _ b: inout Int) {
    
}

let f5 = swapNumbers(_:_:)
f5 // (inout Int, inout, Int) -> ()

// 6. 가변 파라미터로 선언한 경우
func sum(of numbers: Int...) {
    
}

let f6 = sum(of:)
f6 // (Int..) -> ()


// ex)
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multipy(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

// 함수를 리턴하는 함수
typealias ArithmeticFunction = (Int, Int) -> Int // 리턴 타입을 정의
func selectFunction(from op: String) -> ArithmeticFunction? { // nil을 리턴하기 위해서는 return type을 Optional로
    switch op {
    case "+":
        return add(_:_:)
    case "-":
        return subtract(_:_:)
    case "*":
        return multipy(_:_:)
    case "/":
        return divide(_:_:)
    default:
        return nil
    }
}

let af = selectFunction(from: "+")
af?(1,2) // optional Chaining

selectFunction(from: "*")?(12, 34)
// selectFunction 함수는 Optinal 타입으로 리턴을 하고 있기 때문에 Optinal Chaining을 해서 unwrapping을 하여 호출을 해야한다.








