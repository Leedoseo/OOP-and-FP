import UIKit

class Animal {
    // 캡슐화 : name속성은 private으로 외부에서 접근할 수 없음. (같은 파일 내의 해당 클래스/구조체 안에서만 접근가능)
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    // 추상화: speak 메서드를 외부에서 사용할 수 있게 공개 (public 개념)
    func speak() {
        print("\(name) is making a sound")
    }
}

// 상속을 통해 Animal을 확장한 Dog 클래스
class Dog: Animal {
    // 다형성: speak 메서드를 재정의하여 Dog에 맞게 행동하도록 함.
    override func speak() {
        print("Woof! Woof!")
    }
}


// 객체 생성
let myDog = Dog(name: "puppy")
myDog.speak()
