//
//  FetchBindingCardInfoModel.swift
//  PeraKing
//  
//  Created by wealon on 2025.
//  PeraKing.
//  
    

import Foundation
import SmartCodable
// MARK: - 主模型
@objcMembers public class FetchBindingCardInfoModel: BaseModel, SmartCodable {
    var gang: [PaymentTypeModel] = [] // 付款类型（电子钱包（1） / 银行卡（2））
}

// MARK: - 付款类型模型
@objcMembers public class PaymentTypeModel: BaseModel, SmartCodable {
    var connect: String = "" // 类型名称，例如："E-wallet"（电子钱包） 或 "Bank"（银行卡）
    var escape: Int?  // 类型标识，例如：1（电子钱包） 或 2（银行卡）
    var gang: [PaymentItemModel] = [] // 动态表单项
}

// MARK: - 付款项模型
@objc public class PaymentItemModel: BaseModel, SmartCodable {
    var connect: String = "" // 表单项名称，例如："Select your recipient E-wallet"（选择你的收款电子钱包）
    var downwards: String = "" // 表单项的唯一标识符
    var gen: String = "" // 表单项的提示文本
    var obviously: String = "" // 表单项的状态，例如："stepped"（已操作） 或 "onto"（待操作）
    var upwards: [OptionModel] = [] // 下拉选项列表
    var hawk: Int = 0 // 字段状态，例如：0（未填写） 或 1（已填写）
    var grandpa: Int = 0 // 字段状态，例如：0（未验证） 或 1（已验证）
    var arrive: String = "" // 字段完成状态，例如："unFinish"（未完成） 或 "finish"（已完成）
    var beneath: String = "" // 下拉的 value 值，最终展示字段
    var escape: String = "" // 下拉的 key 值，最终传参字段
    var restricted: String = "" // 保留字段
    var sniffed: Int = 0 // 保留字段
    var paid: Int = 0 // 保留字段
}
