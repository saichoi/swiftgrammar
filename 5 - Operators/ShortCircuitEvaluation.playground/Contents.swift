import UIKit

/*:
 # Short-circuit Evaluation
 */
// 단락평가 : 첫번째 조건만을 평가하고 리턴한다. 결과를 얻을 만한 최소한의 코드만 실행시킨다.
// false &&
// true ||

var a = 1
var b = 1

func updateLet() -> Bool {
    a += 1
    return false
}

func updateRight() -> Bool {
    b += 1
    return true
}

// Side Effect

let resultA = updateLet()
let resultB = updateRight()

if resultA && resultB {
    
}

a
b

