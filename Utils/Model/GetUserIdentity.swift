//
//  GetUserIdentity.swift
//  PeraKing
//  
//  Created by wealon on 2025.
//  PeraKing.
//  
    

import Foundation
import SmartCodable

// MARK: - 主模型
@objc public class GetUserIdentityModel: BaseModel, SmartCodable {
    var lenses: LensesModel? // 已选证件信息
    var bag: Int = 0 // 人脸是否完成（0 否，1 是），标记为 "B"
    var obscured: String? // 人脸图片地址
    var canvas: [[String]] = [] // OCR 证件类型列表
    var escape: Int? // 图片选择类型：1 相机+相册，2 相机

}

// MARK: - 已选证件信息模型
@objc public class LensesModel: BaseModel, SmartCodable {
    var grandpa: Int = 0 // 证件是否完成（0 否，1 是），标记为 "A"
    var obscured: String? // 证件图片地址
    var expensive: String? // 已选卡片类型
    var yuan: Venimost? // 证件详细信息
}

// MARK: - 证件详细信息模型
@objc public class Venimost: BaseModel, SmartCodable {
    var tens: String = "" // 姓名
    var cost: String = ""// 身份证号
    var imported: String  = ""// 生日
}
