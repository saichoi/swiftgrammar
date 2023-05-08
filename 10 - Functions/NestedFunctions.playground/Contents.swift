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
 # Nested Functions
 */
// 내포 함수 : 다른 함수에 포함되어 있는 함수
func outer() -> () -> () {
    // Nested Function
    func inner() {
        print("inner")
    }
    
    // inner() // outer함수 내부에서만 호출할 수 있다.
    
    print("outer")
    
    return inner
}

// outer() // outer만 프린트
let f = outer()
f() // 리턴된 값은 inner함수를 다시 호출하면 inner, outer 모두 프린트된다.
// inner함수가 정상적으로 호출 되도록 outer 함수를 호출한 스코프로 확장 -> 직접 호출할 수 없다. 리턴된 값으로 간접적으로 호출
// inner() // 호출 범위에 차이가 있다. 글로벌 스코프에서 inner 함수를 호출 할 수 없다.





