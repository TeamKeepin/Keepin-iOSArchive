//
//  DataRequest.swift
//  Keepin_iOSArchive
//
//  Created by Yi Joon Choi on 2021/07/12.
//

import Foundation

//우리가 서버통신할때 넣어서 보내는 데이터 model
//ex: 로그인 API
//주의점 : 변수이름은 서버쪽에 보내는 데이터 example과 반 드 시 동일하게 맞출것!!

struct DataRequest: Encodable{
    var email : String
    var password : String
    var name : String
    var birth : String
    var phoneTaken : String
    var phone : String
}
