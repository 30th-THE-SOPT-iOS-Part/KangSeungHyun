//
//  NetworkResult.swift
//  SOPT30th-1st-Assignment
//
//  Created by Zaid Kang on 2022/05/09.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
