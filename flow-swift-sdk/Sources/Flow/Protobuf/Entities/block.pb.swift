// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: flow/entities/block.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

public struct Flow_Entities_Block {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var id: Data = Data()

    public var parentID: Data = Data()

    public var height: UInt64 = 0

    public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
        get { return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp() }
        set { _timestamp = newValue }
    }

    /// Returns true if `timestamp` has been explicitly set.
    public var hasTimestamp: Bool { return _timestamp != nil }
    /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
    public mutating func clearTimestamp() { _timestamp = nil }

    public var collectionGuarantees: [Flow_Entities_CollectionGuarantee] = []

    public var blockSeals: [Flow_Entities_BlockSeal] = []

    public var signatures: [Data] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp?
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "flow.entities"

extension Flow_Entities_Block: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    public static let protoMessageName: String = _protobuf_package + ".Block"
    public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "id"),
        2: .standard(proto: "parent_id"),
        3: .same(proto: "height"),
        4: .same(proto: "timestamp"),
        5: .standard(proto: "collection_guarantees"),
        6: .standard(proto: "block_seals"),
        7: .same(proto: "signatures"),
    ]

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeSingularBytesField(value: &self.id) }()
            case 2: try { try decoder.decodeSingularBytesField(value: &self.parentID) }()
            case 3: try { try decoder.decodeSingularUInt64Field(value: &self.height) }()
            case 4: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
            case 5: try { try decoder.decodeRepeatedMessageField(value: &self.collectionGuarantees) }()
            case 6: try { try decoder.decodeRepeatedMessageField(value: &self.blockSeals) }()
            case 7: try { try decoder.decodeRepeatedBytesField(value: &self.signatures) }()
            default: break
            }
        }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !id.isEmpty {
            try visitor.visitSingularBytesField(value: id, fieldNumber: 1)
        }
        if !parentID.isEmpty {
            try visitor.visitSingularBytesField(value: parentID, fieldNumber: 2)
        }
        if height != 0 {
            try visitor.visitSingularUInt64Field(value: height, fieldNumber: 3)
        }
        if let v = self._timestamp {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        }
        if !collectionGuarantees.isEmpty {
            try visitor.visitRepeatedMessageField(value: collectionGuarantees, fieldNumber: 5)
        }
        if !blockSeals.isEmpty {
            try visitor.visitRepeatedMessageField(value: blockSeals, fieldNumber: 6)
        }
        if !signatures.isEmpty {
            try visitor.visitRepeatedBytesField(value: signatures, fieldNumber: 7)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    public static func == (lhs: Flow_Entities_Block, rhs: Flow_Entities_Block) -> Bool {
        if lhs.id != rhs.id { return false }
        if lhs.parentID != rhs.parentID { return false }
        if lhs.height != rhs.height { return false }
        if lhs._timestamp != rhs._timestamp { return false }
        if lhs.collectionGuarantees != rhs.collectionGuarantees { return false }
        if lhs.blockSeals != rhs.blockSeals { return false }
        if lhs.signatures != rhs.signatures { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
