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
 # Optional Pattern
 */
// Ctrl + Command
let a: Int? = 0

let b: Optional<Int> = 0

// 1
if a == nil {
    
}

if a == .none {
    
}


// 2
if a == 0 {
    
}

if a == .some(0) {
    
}


// 3
if let x = a {
   print(x)
}

if case .some(let x) = a {
   print(x)
}


// optinal pattern
if case let x? = a {
   print(x)
}

// optional binding가 거의 동일한데 사용하는 이유는 코드가 단순해지기 때문이다.
let list: [Int?] = [0, nil, nil, 3, nil, 5]

// optional binding (guard)
for item in list { // 6 times
   guard let x = item else { continue }
   print(x) // 3 times
}


for case let x? in list {
   print(x) // 3 times
}





























