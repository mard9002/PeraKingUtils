//
//  OrderListModel.swift
//  PeraKing
//  
//  Created by wealon on 2025.
//  PeraKing.
//  
    

import Foundation
import SmartCodable


// MARK: - 主模型
@objcMembers public class OrderListModel: BaseModel, SmartCodable {
    var takes: [ElectrenModel] = [] // 订单列表
    var suffering: Int = 0 // 状态标识，例如：1
}

// MARK: - 订单模型
@objcMembers public class ElectrenModel: BaseModel, SmartCodable {
    var lu: String = "" // 订单 ID，例如："40"
    var climbing: ClimbingModel? // 订单详细信息
}

// MARK: - 订单详细信息模型
@objcMembers public class ClimbingModel: BaseModel, SmartCodable {
    var lu: Int = 0 // 订单 ID，例如：40
    var waste: Int = 0 // 产品 ID，例如：1
    var remained: String = "" // 产品 logo 链接，例如："logo链接"
    var steered: String = "" // 产品名称，例如："ATM Peso"
    var complaints: String = "" // 订单状态，例如："120"
    var defend: String = "" // 右上角订单状态文案，例如："Finish"
    var kindly: String = "" // 金额描述，例如："Loan Amount"
    var treating: String = "" // 金额，例如："₱ 2,000"
    var complained: String = "" // 日期文案，例如："Payment Date"
    var slapping: String = "" // 日期，例如："19-09-2024"
    var flung: String = "" // 期限文案，例如："Loan Term"
    var relative: String = "" // 期限，例如："180 days"
    var appropriate: String = "" // 按钮文案，例如："Go Apply"（为空时不展示按钮）
    var niece: String = "" // 订单描述文案，例如："You are already 3 days overdue,please repay in time"
    var unpleasantly: Int = 0 // 类型标识，例如：1（逾期）、2（还款中）、3（未申请）等，用于判断背景色等
    var indescribable: String = "" // 点击跳转链接，例如："http://47.89.212.157:8080/#/confirmOfLoanV3?orderId=432006&productId=2"
}
