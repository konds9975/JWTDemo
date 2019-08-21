//
//  ViewController.swift
//  JWTDemo
//
//  Created by MacBook Pro on 21/08/19.
//  Copyright © 2019 MacBook Pro. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //NSString *token = [Jwt encodeWithPayload:detailDict andKey:kjwttojankeypassword andAlgorithm:HS256 andError:&error];
        
        let dictWithOptional: [String: AnyObject?] = [
            "email":"chetan@user.com" as AnyObject,
            "password": "password" as AnyObject
        ]
        let tokan = try! Jwt.encode(withPayload: dictWithOptional as [AnyHashable : Any], andKey: "OEW2auMog9skmmfluoMxqqLjD60QCeLY", andAlgorithm: HS256)
        print(tokan)
        
        let dic = try! Jwt.decode(withToken: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWNjZXNzIjoxLCJpZHMiOnsidG90YWxfZ2FtZV9sZXZlbHMiOjEwLCJpb3NfY29sb3JfMSI6IiNmYzg1OWMiLCJpb3NfY29sb3JfMiI6IiMwMGZmYjYiLCJhbmRyb2lkX2NvbG9yXzEiOiIjZmM4NTljIiwiYW5kcm9pZF9jb2xvcl8yIjoiIzAwZmZiNiIsInVzZXJfY2F0ZWdvcnlfaWQiOiIyIiwidGltZXNfcGxheWVkIjoiMTYiLCJnYW1lX2xldmVsIjoiMSIsImxldmVsX2RpZmZpY3VsdHlfaWQiOiIxMCIsInVzZXJfaWQiOiI5NyJ9LCJxdWVzdGlvbnMiOlt7InF1ZXN0aW9uX2lkIjoiNjIiLCJxdWVzdGlvbl9vYmplY3RfbmFtZSI6Imthbmdhcm9vNC5qcGciLCJxdWVzdGlvbl9hbnN3ZXIiOiJLYW5nYXJvbyIsInF1ZXN0aW9uX2xldmVsIjoiMyIsIm9iamVjdEluZm9ybWF0aW9uIjoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gRG9uZWMgdXQgYW50ZSB2YXJpdXMsIHVsdHJpY2VzIHJpc3VzIHNlZCwgcmhvbmN1cyB0dXJwaXMuIE5hbSBlbGl0IGRpYW0sIHN1c2NpcGl0IG5vbiBkb2xvciBlbGVtZW50dW0sIHBoYXJldHJhIHRyaXN0aXF1ZSBtYXVyaXMuIE1hZWNlbmFzIGF0IGxpYmVybyBzb2xsaWNpdHVkaW4sIG1hdHRpcyB0b3J0b3IgcGxhY2VyYXQsIHBoYXJldHJhIG9yIiwiaW1hZ2UiOiJodHRwOlwvXC8xMTQuNzkuMTM3LjE5Mzo4ODg4XC93b3Jrc3BhY2VcL2hhcnNoXC9pa25vd2FuaW1hbF90ZXN0b3VyY29kZVwvYW5pbWFsXC91cGxvYWRcL29iamVjdHNcL2ltYWdlc1wva2FuZ2Fyb280LmpwZyJ9LHsicXVlc3Rpb25faWQiOiI1NyIsInF1ZXN0aW9uX29iamVjdF9uYW1lIjoiR29hdDQuanBnIiwicXVlc3Rpb25fYW5zd2VyIjoiR29hdCIsInF1ZXN0aW9uX2xldmVsIjoiMSIsIm9iamVjdEluZm9ybWF0aW9uIjoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gRG9uZWMgdXQgYW50ZSB2YXJpdXMsIHVsdHJpY2VzIHJpc3VzIHNlZCwgcmhvbmN1cyB0dXJwaXMuIE5hbSBlbGl0IGRpYW0sIHN1c2NpcGl0IG5vbiBkb2xvciBlbGVtZW50dW0sIHBoYXJldHJhIHRyaXN0aXF1ZSBtYXVyaXMuIE1hZWNlbmFzIGF0IGxpYmVybyBzb2xsaWNpdHVkaW4sIG1hdHRpcyB0b3J0b3IgcGxhY2VyYXQsIHBoYXJldHJhIG9yIiwiaW1hZ2UiOiJodHRwOlwvXC8xMTQuNzkuMTM3LjE5Mzo4ODg4XC93b3Jrc3BhY2VcL2hhcnNoXC9pa25vd2FuaW1hbF90ZXN0b3VyY29kZVwvYW5pbWFsXC91cGxvYWRcL29iamVjdHNcL2ltYWdlc1wvR29hdDQuanBnIn0seyJxdWVzdGlvbl9pZCI6IjU1IiwicXVlc3Rpb25fb2JqZWN0X25hbWUiOiJmcm9nNC5qcGciLCJxdWVzdGlvbl9hbnN3ZXIiOiJGcm9nIiwicXVlc3Rpb25fbGV2ZWwiOiIyIiwib2JqZWN0SW5mb3JtYXRpb24iOiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBEb25lYyB1dCBhbnRlIHZhcml1cywgdWx0cmljZXMgcmlzdXMgc2VkLCByaG9uY3VzIHR1cnBpcy4gTmFtIGVsaXQgZGlhbSwgc3VzY2lwaXQgbm9uIGRvbG9yIGVsZW1lbnR1bSwgcGhhcmV0cmEgdHJpc3RpcXVlIG1hdXJpcy4gTWFlY2VuYXMgYXQgbGliZXJvIHNvbGxpY2l0dWRpbiwgbWF0dGlzIHRvcnRvciBwbGFjZXJhdCwgcGhhcmV0cmEgb3IiLCJpbWFnZSI6Imh0dHA6XC9cLzExNC43OS4xMzcuMTkzOjg4ODhcL3dvcmtzcGFjZVwvaGFyc2hcL2lrbm93YW5pbWFsX3Rlc3RvdXJjb2RlXC9hbmltYWxcL3VwbG9hZFwvb2JqZWN0c1wvaW1hZ2VzXC9mcm9nNC5qcGcifSx7InF1ZXN0aW9uX2lkIjoiODQiLCJxdWVzdGlvbl9vYmplY3RfbmFtZSI6IldvbGY1LmpwZyIsInF1ZXN0aW9uX2Fuc3dlciI6IldvbGYiLCJxdWVzdGlvbl9sZXZlbCI6IjQiLCJvYmplY3RJbmZvcm1hdGlvbiI6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIERvbmVjIHV0IGFudGUgdmFyaXVzLCB1bHRyaWNlcyByaXN1cyBzZWQsIHJob25jdXMgdHVycGlzLiBOYW0gZWxpdCBkaWFtLCBzdXNjaXBpdCBub24gZG9sb3IgZWxlbWVudHVtLCBwaGFyZXRyYSB0cmlzdGlxdWUgbWF1cmlzLiBNYWVjZW5hcyBhdCBsaWJlcm8gc29sbGljaXR1ZGluLCBtYXR0aXMgdG9ydG9yIHBsYWNlcmF0LCBwaGFyZXRyYSBvciIsImltYWdlIjoiaHR0cDpcL1wvMTE0Ljc5LjEzNy4xOTM6ODg4OFwvd29ya3NwYWNlXC9oYXJzaFwvaWtub3dhbmltYWxfdGVzdG91cmNvZGVcL2FuaW1hbFwvdXBsb2FkXC9vYmplY3RzXC9pbWFnZXNcL1dvbGY1LmpwZyJ9LHsicXVlc3Rpb25faWQiOiI3MCIsInF1ZXN0aW9uX29iamVjdF9uYW1lIjoiT3dsMy5qcGciLCJxdWVzdGlvbl9hbnN3ZXIiOiJPd2wiLCJxdWVzdGlvbl9sZXZlbCI6IjQiLCJvYmplY3RJbmZvcm1hdGlvbiI6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIERvbmVjIHV0IGFudGUgdmFyaXVzLCB1bHRyaWNlcyByaXN1cyBzZWQsIHJob25jdXMgdHVycGlzLiBOYW0gZWxpdCBkaWFtLCBzdXNjaXBpdCBub24gZG9sb3IgZWxlbWVudHVtLCBwaGFyZXRyYSB0cmlzdGlxdWUgbWF1cmlzLiBNYWVjZW5hcyBhdCBsaWJlcm8gc29sbGljaXR1ZGluLCBtYXR0aXMgdG9ydG9yIHBsYWNlcmF0LCBwaGFyZXRyYSBvciIsImltYWdlIjoiaHR0cDpcL1wvMTE0Ljc5LjEzNy4xOTM6ODg4OFwvd29ya3NwYWNlXC9oYXJzaFwvaWtub3dhbmltYWxfdGVzdG91cmNvZGVcL2FuaW1hbFwvdXBsb2FkXC9vYmplY3RzXC9pbWFnZXNcL093bDMuanBnIn1dLCJjYXRlZ29yeV9saXN0IjpbeyJjYXRlZ29yeV9pZCI6IjEiLCJjYXRlZ29yeV9uYW1lIjoiQ2F0ZWdvcnkgMSJ9LHsiY2F0ZWdvcnlfaWQiOiIyIiwiY2F0ZWdvcnlfbmFtZSI6IkNhdGVnb3J5IDIifSx7ImNhdGVnb3J5X2lkIjoiMjciLCJjYXRlZ29yeV9uYW1lIjoidGVzdCJ9XX0.ErFeEWsIr355pRa_4udXrdGMvy6z2g4rp1BjpnKon-8", andKey: "OEW2auMog9skmmfluoMxqqLjD60QCeLY", andVerify: true)
        
        print(dic)
        
        let data = try! JSONSerialization.data(withJSONObject: dic, options: .prettyPrinted)
        
        let decoder = JSONDecoder()
        do {
            let customer = try decoder.decode(Welcome.self, from: data)
            print(customer.questions[0].questionAnswer)
        } catch {
            print(error.localizedDescription)
        }
        
        
    }


}



// MARK: - Welcome
struct Welcome: Codable {
    let success: Int
    let ids: IDS
    let questions: [Question]
    let categoryList: [CategoryList]
    
    enum CodingKeys: String, CodingKey {
        case success, ids, questions
        case categoryList = "category_list"
    }
}

// MARK: - CategoryList
struct CategoryList: Codable {
    let categoryID, categoryName: String
    
    enum CodingKeys: String, CodingKey {
        case categoryID = "category_id"
        case categoryName = "category_name"
    }
}

// MARK: - IDS
struct IDS: Codable {
    let totalGameLevels: Int
    let iosColor1, iosColor2, androidColor1, androidColor2: String
    let userCategoryID, timesPlayed, gameLevel, levelDifficultyID: String
    let userID: String
    
    enum CodingKeys: String, CodingKey {
        case totalGameLevels = "total_game_levels"
        case iosColor1 = "ios_color_1"
        case iosColor2 = "ios_color_2"
        case androidColor1 = "android_color_1"
        case androidColor2 = "android_color_2"
        case userCategoryID = "user_category_id"
        case timesPlayed = "times_played"
        case gameLevel = "game_level"
        case levelDifficultyID = "level_difficulty_id"
        case userID = "user_id"
    }
}

// MARK: - Question
struct Question: Codable {
    let questionID, questionObjectName, questionAnswer, questionLevel: String
    let objectInformation: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case questionID = "question_id"
        case questionObjectName = "question_object_name"
        case questionAnswer = "question_answer"
        case questionLevel = "question_level"
        case objectInformation, image
    }
}
