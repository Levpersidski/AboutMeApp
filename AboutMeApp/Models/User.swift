//
//  User.swift
//  AboutMeApp
//
//  Created by SWIFT on 26.03.2025.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Роман",
                surname: "Бакаев",
                age: 36,
                hobby: "Сноубординг",
                work: "Криптовалютные операции",
                image: "Roman",
                introduce: """
Бакаев Роман  родился в 1988 году в г. Новошахтинск Ростовской области.
В будни Роман — мастер криптовалютного анализа, где каждая свеча на графике и мировые новости становятся частью сложного пазла. Но когда приходит первый снег, он превращается в человека-стихию. Сноуборд под ногами, горизонт впереди — это его способ «перезагрузить» разум.
«Когда ты летишь вниз по склону, нет места сомнениям. Ты либо здесь и сейчас, либо никогда. Так и с криптой: перегруженность убивает интуицию», — говорит он.


"""
            )
        )
    }
   
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobby: String
    let work: String
    let image: String
    let introduce: String
    
    var fullName: String {
        
    name + " " + surname
        
    }
    
    var describing: String {
        """
        Имя: \(name)
        
        Фамилия: \(surname)
        
        Возраст: \(age)
        
        Хобби: \(hobby)
        
        Работа: \(work)
        """
    }
}
