//
//  ServerTemplateVC.swift
//  Keepin_iOSArchive
//
//  Created by Yi Joon Choi on 2021/07/12.
//

import Foundation
import UIKit

class ServerTemplateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let exampleRequest = DataRequest(email: "fbduddn97@naver.co", password: "1234567")
        DataManager().signIn(exampleRequest, viewController: self)
    }

}

extension ServerTemplateVC {
    func didSuccessSignIn(message: String) {
        print("서버통신 성공")
    }
    
    func failedToRequest(message: String) {
        print(message)
    }
}
