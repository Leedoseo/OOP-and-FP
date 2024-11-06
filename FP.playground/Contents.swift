import UIKit

// 순수 함수 예제
func square(_ number: Int) -> Int {
    return number * number
}

let numbers = [1, 2, 3, 4, 5]

// map을 이용한 고차 함수 예제
let squaredNumbers = numbers.map { square($0) }

// filter를 이용하여 짝수만 필터링
let evenNumbers = numbers.filter { $0 % 2 == 0 }

// reduce를 이용하며 모든 숫자의 합 계산
let sum = numbers.reduce(0) { $0 + $1 }
