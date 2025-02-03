import UIKit

// 구조체 문법
//struct StructName { << 구조체 이름은 Upper-camelcase로 지어야함
//    property      타입 내부에 포함된 요소는 member라고 부름. member의 이름은 low-camelcase로 지어야함
//    method
//    initializer
//    subscript
//}

struct Person { // 이 안은 선언만 와야함. 속성선언, 메서드 선언 등등
    var name: String // 보면 변수랑 문법이 같음, Global Scope나 Local Scope에서 선언하면 변수라고 부르고, Type안에서 선언하면 속성이라고 부름. 현재는 속성임.
    var age: Int // 즉, if문, guard문 등등은 올 수 없음
    
    func speak() { // 하지만 여기 안에서는 됨
        print("Hello")
    }
}

// 인스턴스 생성
let p = Person(name: "Doseo", age: 28) // << 새로운 메모리 공간이 만들어지고 인스턴스가 생성된 것임
                                       
let name = "Paul"
name
p.name // 속성에 접근할 때는 인스턴스의 이름으로 접근해야함. 즉, p로 접근해야함
p.speak()
// 호출 할 때 이름 앞에 아무 것도 없으면 -> 함수, 앞에 .이 있으면 메서드

//클래스 문법
//class ClassName {
//    property
//    method
//    initializer
//    deinitializer
//    subscript
//}

class Person2 { // 생성자를 만들어야함
    var name: String
    var age: Int
    
    func speak() {
        print("Hello")
    }
    
    init() { // << 이게 생성자 initializer
        name = "Lee Doseo" // 모두 초기화 해주어야함
        age = 30
        // 위 또는 아래처럼 사용하면됨
        //    init(name: String, age: Int) {
        //        self.name = name
        //        self.age = age
//    }
//}
    }
}

// 인스턴스 생성
let p2 = Person2() // 여기 괄호 안이 비어있는 이유는 위에서 init으로 초기화를 해줬기 때문에 여기다가 파라미터를 전달할 필요가 없음
// 아래를 선택했을 때 아래처럼 작성하면 됨.
//let p2 = Person2(name: "Lee Doseo", age: 30)
p2.name
p2.age

