//
//  InitializeAddressModel.swift
//  PeraKing
//  
//  Created by wealon on 2025.
//  PeraKing.
//  
    

import Foundation
import SmartCodable


@objc public class InitializeAddressModel: BaseModel, SmartCodable {
    var xRAJOOq: String?
    var KCgCM39wc: String?
    var ek7mkNVEiiwq: String?
    var takes: [AddressModel] = [] // 区域列表，包含多个省市信息
    
}

// MARK: - 区域模型
@objc public class AddressModel: BaseModel, SmartCodable {
    var takes: [AddressModel] = [] // 子区域列表，例如：Andamans District、Nicobars District
    var tens: String = "" // 区域名称，例如："Andaman & Nicobar Islands"
    var shield: Int = 0 // 区域类型标识，例如：1（表示某个区域类型）
}
