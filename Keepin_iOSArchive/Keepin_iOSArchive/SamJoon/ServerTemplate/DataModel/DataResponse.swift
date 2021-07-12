//
//  DataResponse.swift
//  Keepin_iOSArchive
//
//  Created by Yi Joon Choi on 2021/07/12.
//

import Foundation
//우리가 서버쪽에서 받는 데이터 model
//ex: 로그인 API
//주의점 : 변수이름은 서버쪽에서 받는 데이터 example과 반 드 시 동일하게 맞출것!!

struct DataResponse: Decodable{
    var status : Int
    var message : String
}

