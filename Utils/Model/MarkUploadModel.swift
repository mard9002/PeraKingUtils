//
//  MarkUploadModel.swift
//  PeraKing
//  
//  Created by wealon on 2025.
//  PeraKing.
//  
    

import Foundation
import SmartCodable

@objc public class MarkUploadModel: BaseModel, SmartCodable {
    var facebook: FacebookModel?
}


@objc public class FacebookModel: BaseModel, SmartCodable {
    var cFBundleURLScheme: String = ""
    var facebookAppID: String = ""
    var facebookDisplayName: String = ""
    var facebookClientToke: String = ""
}
