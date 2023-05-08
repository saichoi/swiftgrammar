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

struct Contacts {
   var email: [String: String]?
   var address: String?
    
    func printAddress() {
        return print(address ?? "no address")
    }
 }

struct Person {
   var name: String
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    
    func getContacts() -> Contacts? {
        return contacts
    }
}

// 1. 옵셔널 체이닝의 결과는 항상 옵셔널이다.
// 2. 옵셔널 체이닝에 포함된 표현식 중에 하나라도 nil을 리턴한다면 이어지는 표현식을 평가하지 않고 nil을 리턴한다.
/*:
 # Optional Chaining
 */
// optional chaining이 아닌 경우
var p = Person(name: "James", email: "swift@example.com")
let a = p.contacts?.address

// optional chaining인 경우
var optionalP: Person? = Person(name: "James", email: "swift@example.com")
let b = optionalP?.contacts?.address // 하나라도 옵셔널이 있다면 옵셔널로 리턴한다.
b // String?

optionalP = nil
let c = optionalP?.contacts?.address
c // String?, nil 첫번째 표현식에서 nil이 평가되면 나머지는 평가 되지 않는다.

// contants를 contacts로 변경하면
// 1. contacts 표현식에도 ?를 붙여줘야한다.
// 2. a가 String -> String?이 된다. 옵셔널이 하나라도 포함되어 있다면 옵셔널을 리턴하기 때문이다.

// address를 String?으로 변경하면
// 컴파일 에러는 발생하지 않는다. address 속성으로 통해 다른 속성에 접근하고 있지 않기 때문이다.
// address 속성을 통해 다른 속성에 접근하려면 ?를 붙여줘야 한다.
p.contacts?.address?.count

// person 구조체에 getContacts() 를 추가
// getContacts() 메서드를 통해 address 속성에 접근
p.getContacts()?.address

// ? 앞에 붙이는 경우
let f: (()-> Contacts?)? = p.getContacts
f?()?.address

// Contacts 구조체에 printAddress() 메서드를 추가 -> 값을 리턴하지 않는 메서드
let d = p.getContacts()?.printAddress()
// ()? 옵셔널 void -> 값을 리턴하지 않는다는 키워드
if p.getContacts()?.printAddress() != nil {
    
}

// optional bindning 사용
if let _ = p.getContacts()?.printAddress() {
    
}

// optional chaining subscript에 접근
// let e = p.contacts?.email["home"]

// email 속성을 옵셔널로 변경
let e = p.contacts?.email?["home"]

// subscript가 리턴하는 값을 통해서 count 속성에 접근
p.contacts?.email?["home"]?.count

// optional chaining을 통해 address 속성을 변경
p.contacts?.address = "Deagu"
p.contacts?.address // 새로운 값이 저장됨

optionalP?.contacts?.address = "Daegu"
optionalP?.contacts?.address // nil이 출력된다. optionalP가 nil. contacts 속성에 접근하지 않은 address 속성에도 접근하지 못해 값을 저장할 수 없어짐


