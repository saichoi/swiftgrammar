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
 # Custom Operators
 ![operator](operator.png)
 
 ### Reserved Tokens
 (, ), {, }, [, ], ., ,, :, ;, =, @, #, &(prefix operator), ->, `, ?, !(postfix operator), \/*, *\/
 
 ### First Character
 /, =, -, +, !, *, %, <, >, &, |, ^, ?, ~
 
 ![custom-operator](custom-operator.png)
 */*/











/*:
 # Precedence Groups
 ![precedence-group](precedence-group.png)
 
 [Operator Declarations]:
 https://developer.apple.com/documentation/swift/operator_declarations "Operator Declarations"
 
 [Operator Declarations]
 
 ![precedence-group-syntax](precedence-group-syntax.png)
 
 ![precedence-group-declaration](precedence-group-declaration.png)
 */
// 1. 연산자 선언 -> 글로벌 스코프
// 연산자 위치 선언, 피연산자 앞 prefix, 뒤 postfix, 사이 infix
// 연산자로 사용할 수 있는 특수문자
// 첫번쨰 문자로 사용할 수 있는 특수 문자
// 1. 가장 단순한 연산자 선언
// 2. 기존 연산자와 함께 사용했을 때 모호함이 없어야한다.

prefix operator +++

extension Int {
    static prefix func +++(num: inout Int) {
        num += 2
    }
}

var a = 1
+++a
a

// 새로운 우선순위 그룹
precedencegroup MyPrecedence {
    higherThan: AdditiveArithmetic // 더하기 보다 우선순위가 높아진다.
}

//// 이항 연산자
//infix operator *+*: MultiplicationPrecedence // 우선 순위를 곱하기 우선순위와 같이 한다.
infix operator *+*: MyPrecedence // 내가 만든 우선순위 그룹을 적용

extension Int {
    static func *+*(left: Int, right: Int) -> Int {
        return (left * right) + (left * right)
    }
}

1 *+* 2 + 3




