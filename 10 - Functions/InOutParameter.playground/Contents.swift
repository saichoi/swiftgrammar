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
 # In-Out Parameters
 */
// 입출력 파라미터
var num1 = 12
var num2 = 34

func swapNumber(_ a: Int, with b: Int) {
    // 함수 바디에서 파라미터 값을 변경할 수 없다.
//    var tmp = a
//    a = b
//    b = tmp
}

swapNumber(num1, with: num2)
// 함수 바디에는 복사본이 전달된다. -> 함수 바디에서 값이 변경되어도 num1과 num2는 변경되지 않는다.
// Int가 가평식이기 때문이다.

/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */
// 입출력 파라미터를 사용하면 함수 내부에서 파라미터 값을 변경할 수 있다.
func swapNumber2(_ a: inout Int, with b:  inout Int) {
    let tmp = a
    a = b
    b = tmp
}

num1 // 12
num2 // 34

swapNumber2(&num1, with: &num2)

num1 // 34
num2 // 12

// 입출력 파라미터는 copy in / copy out 메모리 모델을 사용
// copy in : 함수가 호출 될 때 파라미터로 전달한 변수의 값을 함수 내부로 복사한 값을 전달한다.
//      1. swapNumber2()를 호출할 때 &num1에 들어 있는 값 12를 복사하여 함수 내부로 이동한다.
//      2. temp에 12를 넣어두고
//      3. a 값을 &num2에 들어있는 값 34로 대치한다.
//      4. b 에 temp에 저장해둔 12를 넣어준다.
// copy out : 함수가 모두 실행되고 종료되면 함수에서 변경한 값이 파라미터로 전달한 변수에 복사된다.
//      5. 함수에서 도려낸 값을 &num1, &num2에 복사된다.
//      6. 결과적으로 함수 내부 코드를 통과하여 함수 외부에 선언된 변수 num1과 num2의 값이 변경된다.

// 입출력 파라미터 사용시 자주하는 실수
// 1. 동일한 변수를 두 번 이상 전달하는 것
// ex ) swapNumber(&num1, with: &num1)
// 2. 상수로 선언하여 값을 전달하는 것
// ex )     let a = 12
//          let b = 34
//          swapNumber(&a, with: &b) // immutable
// 3. literal을 전달하는 것 -> literal을 값을 변경할 수 없고 값을 저장하고 있는 메모리 공간이 없다.
// ex)      swapNumber(&12, with: &34)
// 4. 기본값을 지정할 수 없다.
// 5. 가변 파라미터를 입출력 파라미터로 선언할 수 없다.
// ex )     func sum(of nums: inout Int...) {
//
//          }

// Function Notation 함수 표기법
// 1. 레퍼런스 문서 이해를 위해 2. function type을 이해하기 위해
// 함수를 언급하는 방법
// 1. functionName(label:)
// 2. functionName(label:label:)
// 3. functionName

// sayHello
func sayHello() {
    print("Hello, Swift")
}

// sayHello(to:)
func sayHello(to name: String) {
    print("Hello, \(name)")
}

// sayHello(_:)
func syaHello(_ name: String) {
    print("Hello, \(name)")
}


