//
//  ViewController.swift
//  JsonParseSwift4
//
//  Created by Marcel Widmer on 28.04.18.
//  Copyright © 2018 Marcel Widmer. All rights reserved.
// https://api.letsbuildthatapp.com/jsondecodable/course
// https://api.letsbuildthatapp.com/jsondecodable/courses
// https://api.letsbuildthatapp.com/jsondecodable/website_description
// https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields

import UIKit

// Model Object
struct WebsiteDescription: Decodable {
    let name: String?
    let description: String?
    let courses: [Course]?
}

// Model Object
struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlCourse = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/course")
        URLSession.shared.dataTask(with: urlCourse!) { (data, response, err) in
            guard let data = data else {return}
            do{
                let course = try
                    JSONDecoder().decode(Course.self, from: data)
                print(course.name!)
            } catch let  jsonErr{
                print("Error serializing json:" , jsonErr)
            }
            }.resume()
        
        
        
        let urlCourses = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/courses")
        URLSession.shared.dataTask(with: urlCourses!) { (data, response, err) in
            guard let data = data else {return}
            do{
                let courses = try
                    JSONDecoder().decode([Course].self, from: data)
                print(courses)
                
            } catch let  jsonErr{
                print("Error serializing json:" , jsonErr)
            }
            }.resume()
        
        
        
        let urlWebsiteDescription = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/website_description")
        URLSession.shared.dataTask(with: urlWebsiteDescription!) { (data, response, err) in
            guard let data = data else {return}
            do{
                let websiteDescription = try
                    JSONDecoder().decode(WebsiteDescription.self, from: data)
                print(websiteDescription.name!)
                print(websiteDescription.description!)
                
            } catch let  jsonErr{
                print("Error serializing json:" , jsonErr)
            }
            }.resume()
    }
}


