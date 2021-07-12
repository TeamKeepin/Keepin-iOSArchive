//
//  DataManager.swift
//  Keepin_iOSArchive
//
//  Created by Yi Joon Choi on 2021/07/12.
//
import Foundation
import Alamofire

//func 안에있는 파라미터 설명
//parameters: 우리가 보내는 데이터 model -> Request로 끝나는거
//viewController: 우리가 이 서버통신을 써야하는 뷰컨이름
//"\(Constant.BASE_URL)"뒤에는 base URL 뒤에 오는 API 주소를 넣어줍니다!
//method: API 방식 get, post, 이런거
//paramters: 에는 그냥 parameters 넣어주면 됨
//header: 필요한 헤더

class DataManager {
    func signIn(_ parameters: DataRequest, viewController: ServerTemplateVC) {
        AF.request("\(Constant.BASE_URL)/user/signup", method: .post, parameters: parameters, encoder: JSONParameterEncoder(), headers: Constant.USER_HEADER)
            .validate(statusCode: 200..<500)
            .validate(contentType: ["application/json"])
            .responseDecodable(of: DataResponse.self) { response in
                switch response.result {
                case .success(let response):
                    viewController.didSuccessSignIn(message: response.message)
                case .failure(let error):
                    print(error.localizedDescription)
                }
                print(response.result)
            }
    }
}

