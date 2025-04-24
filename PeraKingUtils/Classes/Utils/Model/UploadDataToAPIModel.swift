//
//  UploadDataToAPIModel.swift
//  PeraKing
//
//  Created by wealon on 2025.
//  PeraKing.
//


import Foundation
import SmartCodable

@objc public class UploadDataToAPIModel: BaseModel, SmartCodable {
    var tens: String? // 姓名
    var cost: String? // 证件号（用全键盘编辑）
    var peeling: String? // 性别
    var imported: String? // 出生日期（日-月-年，编辑时带入识别出的日期）
    var obscured: String? // 图片地址
    var canon: String? // 出生年份
    var helpful: String? // 出生月份
    var taller: String? // 出生日期
}
