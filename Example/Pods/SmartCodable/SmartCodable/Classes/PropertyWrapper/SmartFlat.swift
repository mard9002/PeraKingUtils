//
//  SmartFlat.swift
//  SmartCodable
//
//  Created by Mccc on 2024/6/18.
//


import Foundation

/// 被属性包装器包裹的，不会调用didFinishMapping方法。
/// Swift的类型系统在运行时无法直接识别出wrappedValue的实际类型，需要各个属性包装器自行处理。

@propertyWrapper
public struct SmartFlat<T: Codable>: Codable {
    public var wrappedValue: T

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        do {
            wrappedValue = try T(from: decoder)
        } catch  {
            wrappedValue = try Patcher<T>.defaultForType()
        }
    }

    public func encode(to encoder: Encoder) throws {
        try wrappedValue.encode(to: encoder)
    }
}

extension SmartFlat: WrapperLifecycle {
    func wrappedValueDidFinishMapping() -> SmartFlat<T>? {
        if var temp = wrappedValue as? SmartDecodable {
            temp.didFinishMapping()
            return SmartFlat(wrappedValue: temp as! T)
        }
        return nil
    }
}



// Used to mark the flat type
protocol FlatType { 
    static var isArray: Bool { get }
}

extension SmartFlat: FlatType {
    static var isArray: Bool { T.self is _ArrayMark.Type }
}

// 当 T 是一个数组并且其元素类型符合 Decodable 协议时，
// T.self 会被 _Array 扩展所覆盖，这样 T.self is _Array.Type 就会返回 true。
protocol _ArrayMark { }
// 这里将 Array 类型扩展，使得它在元素类型 (Element) 符合 Decodable 协议时，满足 _Array 协议。也就是说，只有当数组中的元素符合 Decodable 协议时，这个数组类型才会被标记为 _Array。
extension Array: _ArrayMark where Element: Decodable { }


