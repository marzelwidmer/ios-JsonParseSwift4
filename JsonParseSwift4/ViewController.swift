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
//{
//    "id": 1,
//    "name": "Instagram Firebase",
//    "link": "https://www.letsbuildthatapp.com/course/instagram-firebase",
//    "imageUrl": "https://letsbuildthatapp-videos.s3-us-west-2.amazonaws.com/04782e30-d72a-4917-9d7a-c862226e0a93",
//    "number_of_lessons": 49
//}
struct Course: Decodable {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String

//    init(json: [String: Any]) {
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageUrl"] as? String ?? ""
//    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        let url = URL(string: jsonUrlString)
        
        URLSession.shared.dataTask(with: url!) { (data, response, err) in
            // perhaps checkk err
            // also perhaps check response status 200 OK
            guard let data = data else {return}
            
            //            let dataAsString = String(data: data, encoding: .utf8)
            //            print(dataAsString)
            
            do{
                let course = try
                    JSONDecoder().decode(Course.self, from: data)
                print(course.name)
                
                
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
//                    as? [String: Any] else {return}
//                let course = Course(json: json)
//                print(course.name)
    
            } catch let  jsonErr{
                print("Error serializing json:" , jsonErr)
            }
            
            }.resume()
        
        
        //        let myCourse = Course(id: 1, name: "myCourse", link: "myLink", imageUrl: "some  URL")
        //        print(myCourse)
    }
}

