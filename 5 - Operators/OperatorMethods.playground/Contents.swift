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
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */


"a" == "a"

struct Point {
    var x = 0.0
    var y = 0.0
}

extension Point: Equatable { // Point 구조체의 비교 연산자를 작성
    // 컴파일러가 자동 추가 해준다.
//    static func ==(1hs: Point, rhs: Point) -> Bool {
//        return (1hs.x == rhs.x) && (1hs.y == rhs.y)
//    }
}

let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)

// p1 == p2 -> 컴파일러는 두 인스턴스를 비교하는 방법을 모르기 때문에 직접 비교 기능을 구현해야한다.
// point 구조체를 비교할 수 있는 equal to 연잔자 구현
p1 == p2
p1 != p2

// 단항 연산자
extension Point {
    // 전치 연산자 : prefix
    static prefix func -(pt: Point) -> Point {
        return Point(x: -pt.x, y: -pt.y)
    }
}

let p3 = -p1
p3.x
p3.y

// 증가 연산자
extension Point {
    // 후치 연산자
    static postfix func ++(pt: inout Point) -> Point {
        let ret = pt
        pt.x += 1
        pt.y += 1
        return ret
    }
}

var p4 = Point(x: 1.0, y: 2.0)
let p5 = p4++
p5.x
p5.y

p4.x
p4.y
 

   



