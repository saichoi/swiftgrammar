//
//  Copyright (c) KxCoding <kky0317@gmail.com>
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

/*:
 # Scope
 */
/*
 Scope Rule
동일한 스코프에 있는 변수와 상수에 접근할 수 있다.
동일한 스코프에서는 이전에 선언되어있는 변수와 상수에 접근할 수 있다.
로컬 스코프에서는 자신의 상위 스코프에 선언된 변수와 상수에 접근할 수 있다. 하지만 아직 선언되어 있지 않은 경우에는 접근할 수 있다.
상위 스코프에서는 하위 스코프에 접근할 수 없다.
서로 다른 스코프의 동일한 이름의 변수와 상수가 존재한다면 가장 인접한 스코프에 있는 변수와 상수를 사용한다.
 */

// #1
let g1 = 1
// g2
// l1

func doSomething() { // 함수
   // #3
    let l1 = 1
    let g1 = 2
    g1
    g2
   
   if true {
      // #4
       l1
       let l3 = 3
       //  l2
   }
   
   // #5
    let l2 = 2
    // l3
}


// #2
// let g1 = 1
let g2 = 1
g1
g2

struct Scope { // 메서드
   // #6
   // g1
   // g2
    
   func doSomething() {
      // #7
       g1
       g2
   }
}

doSomething()
