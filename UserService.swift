//
//  UserService.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/09.
//

import Foundation
import Alamofire


class UserService {
    // 싱글톤 변수(Singleton)
    //
    static let shared = UserService()

    private init() {}

    func signUp(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        // completion 클로저를 @escaping closure로 정의합니다.
        // ㄴ escaping closure는 당장 이해가 안 되더라도 괜찮습니다.
        
        let url = APIConstants.loginURL                                     // URL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]     // HTTP Headers
        let body: Parameters = [                                            // HTTP body
            "name": name,
            "email": email,
            "password": password
        ]

        // 요청서
        // Request 생성
        let dataRequest = AF.request(url,
                                    method: .post,
                                    parameters: body,
                                    encoding: JSONEncoding.default,
                                    headers: header)

        // 서버 통신 시작 - Request 시작
        dataRequest.responseData { response in
            // 요청(Request)를 하고 넘겨받은 응답의 결과를 가지고 성공 또는 실패 분기 처리를 합니다.
            switch response.result {
            case .success:
                // 성공 시에는 상태코드(Status Code)와 값(Value)이 넘어오겠죠?
                guard let statusCode = response.response?.statusCode else { return }
                print("서버 요청 Parameter 시작")
                print(name)
                print(email)
                print(password)
                guard let value = response.value else { return }
                print(response)
    
                // 해당 응답을 가지고 case 분기처리를 합니다. (200, 400, 500인지 - 200: 성공을 해서 데이터를 잘 받았는지 확인합니다.)
                let networkResult = self.judgeStatus(by: statusCode, value)
                print(networkResult)
                
                completion(networkResult)

            // 실패 시에는 바로 networkFail(통신 실패)라는 신호를 알립니다.
            case .failure:
                print("애초에 실패")
                completion(.networkFail)
            }
        }
    }

    // 상태 코드와 값(value, data)를 가지고 통신의 결과를 핸들링하는 함수입니다.
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        // 성공 시에는 넘겨받은 데이터를 decode(해독)하는 함수를 호출합니다.
        case 200: return isVaildData(data: data)
        case 400: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }

    // 성공 시 넘겨받은 데이터를 decode하는 함수입니다.
    // 이 때 우리가 codable을 채택해서 만들어 놓은 구조체 형식의 데이터 모델을 사용합니다.
    private func isVaildData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponse.self, from: data)
        else { return .pathErr }

        return .success(decodedData as Any)
    }
    
    
    func signIn(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> Void)
    {
        // completion 클로저를 @escaping closure로 정의합니다.
        // ㄴ escaping closure는 당장 이해가 안 되더라도 괜찮습니다.
        
        let url = APIConstants.loginURL                                     // URL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]     // HTTP Headers
        let body: Parameters = [                                            // HTTP body
            "name": name,
            "email": email,
            "password": password
        ]

        // 요청서
        // Request 생성
        let dataRequest = AF.request(url,
                                    method: .post,
                                    parameters: body,
                                    encoding: JSONEncoding.default,
                                    headers: header)

        // 서버 통신 시작 - Request 시작
        dataRequest.responseData { response in
            // 요청(Request)를 하고 넘겨받은 응답의 결과를 가지고 성공 또는 실패 분기 처리를 합니다.
            switch response.result {
            case .success:
                // 성공 시에는 상태코드(Status Code)와 값(Value)이 넘어오겠죠?
                guard let statusCode = response.response?.statusCode else { return }
                print("Successfully called")
                print(name)
                print(email)
                print(password)
                guard let value = response.value else { return }
                print(response)
                print("Successfully called2")

                // 해당 응답을 가지고 case 분기처리를 합니다. (200, 400, 500인지 - 200: 성공을 해서 데이터를 잘 받았는지 확인합니다.)
                let networkResult = self.judgeStatus(by: statusCode, value)
                print("분기처리 success")
                completion(networkResult)

            // 실패 시에는 바로 networkFail(통신 실패)라는 신호를 알립니다.
            case .failure:
                print("애초에 실패")
                completion(.networkFail)
            }
        }
    }

}