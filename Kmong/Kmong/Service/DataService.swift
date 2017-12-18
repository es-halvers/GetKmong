//
//  dataService.swift
//  Kmong
//
//  Created by Eunseok on 2017. 12. 14..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    
    private let pageCategories = [
        Category(title: "#자기소개", imageName: "008-resume.png"),
        Category(title: "#학력&전공", imageName: "007-mortarboard.png"),
        Category(title: "#경험", imageName: "006-group.png"),
        Category(title: "#연락처", imageName: "005-agenda.png")
    ]
    
    private let categories = [
        Category(title: "자기소개", imageName: "008-resume.png"),
        Category(title: "학력&전공", imageName: "007-mortarboard.png"),
        Category(title: "경험", imageName: "006-group.png"),
        Category(title: "연락처", imageName: "005-agenda.png")
    ]
    
    private let items = [
        Item(title: "C 기본교육", imageName: "icons8-comedy-2-filled-100", price: "10000", rating: "3", userName: "CodingByEunsek"),
        Item(title: "Java 기본교육", imageName: "icons8-comedy-2-filled-100", price: "35000", rating: "2", userName: "CodingByEunsek"),
        Item(title: "Swift 기본교육", imageName: "icons8-comedy-2-filled-100", price: "40000", rating: "4", userName: "CodingByEunsek"),
        Item(title: "C++ 기본교육", imageName: "icons8-comedy-2-filled-100", price: "20000", rating: "1", userName: "CodingByEunsek"),
        Item(title: "Unity3D Gaming  기본교육", imageName: "icons8-comedy-2-filled-100", price: "50000", rating: "5", userName: "CodingByEunsek")
    ]
    
    private let values = [
        Value(title: "#용기", imageName: "courage"),
        Value(title: "#열정", imageName: "passion"),
        Value(title: "#커뮤니케이션", imageName: "communication"),
        Value(title: "#호기심", imageName: "curiosity"),
    ]
    
    func getPageCategories() -> [Category] {
        return pageCategories
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getItems() -> [Item] {
        return items
    }
    
    func getValues() -> [Value]{
        return values
    }
    
}
