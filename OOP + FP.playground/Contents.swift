import UIKit

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func isFavorite() -> Bool {
        // 좋아하는 동물 조건 (여기서는 이름이 "Lion"인 경우를 예시로 들었음)
        return name == "Lion"
    }
}

// Animal 클래스의 인스턴스를 담은 배열을 만들고, 각각의 인스턴스에 "Dog", "Lion", "Cat"이라는 이름을 설정
let animals = [Animal(name: "Dog"), Animal(name: "Lion"), Animal(name: "Cat")]

// filter와 map을 사용해 좋아하는 동물의 이름만 출력함.
let favoriteAnimalNames = animals
    .filter { $0.isFavorite() } // animals 배열에서 isFavorite() 메서드의 조건을 만족하는 동물들만 필터링
                                // $0은 현재 배열(Animal 객체) 즉, isFavorite 에서 "Lion"이라는 Animal객체만 통과
    .map { $0.name } // filter로 걸러진 Animal 객체들에서 각 객체의 name 속성만 추출해 새로운 배열을 생성
                     // $0.name은 filter 결과에 남아 있는 각 Animal 객체의 name 값을 가져옴.

print(favoriteAnimalNames)
