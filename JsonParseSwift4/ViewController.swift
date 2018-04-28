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
struct Course {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
 }

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let myCourse = Course(id: 1, name: "myCourse", link: "myLink", imageUrl: "some  URL")
//        print(myCourse)
    }
}

