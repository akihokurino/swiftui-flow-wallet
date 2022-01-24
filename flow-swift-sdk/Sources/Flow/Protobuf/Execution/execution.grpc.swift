//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: flow/execution/execution.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf

/// ExecutionAPI is the API provided by the execution nodes.
///
/// Usage: instantiate `Flow_Execution_ExecutionAPIClient`, then call methods of this protocol to make API calls.
public protocol Flow_Execution_ExecutionAPIClientProtocol: GRPCClient {
    var serviceName: String { get }
    var interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol? { get }

    func ping(
        _ request: Flow_Execution_PingRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Flow_Execution_PingRequest, Flow_Execution_PingResponse>

    func getAccountAtBlockID(
        _ request: Flow_Execution_GetAccountAtBlockIDRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse>

    func executeScriptAtBlockID(
        _ request: Flow_Execution_ExecuteScriptAtBlockIDRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse>

    func getEventsForBlockIDs(
        _ request: Flow_Execution_GetEventsForBlockIDsRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse>

    func getTransactionResult(
        _ request: Flow_Execution_GetTransactionResultRequest,
        callOptions: CallOptions?
    ) -> UnaryCall<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse>
}

extension Flow_Execution_ExecutionAPIClientProtocol {
    public var serviceName: String {
        return "flow.execution.ExecutionAPI"
    }

    /// Ping is used to check if the access node is alive and healthy.
    ///
    /// - Parameters:
    ///   - request: Request to send to Ping.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    public func ping(
        _ request: Flow_Execution_PingRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Flow_Execution_PingRequest, Flow_Execution_PingResponse> {
        return makeUnaryCall(
            path: "/flow.execution.ExecutionAPI/Ping",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makePingInterceptors() ?? []
        )
    }

    /// GetAccountAtBlockID gets an account by address at the given block ID
    ///
    /// - Parameters:
    ///   - request: Request to send to GetAccountAtBlockID.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    public func getAccountAtBlockID(
        _ request: Flow_Execution_GetAccountAtBlockIDRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse> {
        return makeUnaryCall(
            path: "/flow.execution.ExecutionAPI/GetAccountAtBlockID",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetAccountAtBlockIDInterceptors() ?? []
        )
    }

    /// ExecuteScriptAtBlockID executes a ready-only Cadence script against the
    /// execution state at the block with the given ID.
    ///
    /// - Parameters:
    ///   - request: Request to send to ExecuteScriptAtBlockID.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    public func executeScriptAtBlockID(
        _ request: Flow_Execution_ExecuteScriptAtBlockIDRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse> {
        return makeUnaryCall(
            path: "/flow.execution.ExecutionAPI/ExecuteScriptAtBlockID",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeExecuteScriptAtBlockIDInterceptors() ?? []
        )
    }

    /// GetEventsForBlockIDs retrieves events for all the specified block IDs that
    /// have the given type
    ///
    /// - Parameters:
    ///   - request: Request to send to GetEventsForBlockIDs.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    public func getEventsForBlockIDs(
        _ request: Flow_Execution_GetEventsForBlockIDsRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse> {
        return makeUnaryCall(
            path: "/flow.execution.ExecutionAPI/GetEventsForBlockIDs",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetEventsForBlockIDsInterceptors() ?? []
        )
    }

    /// GetTransactionResult gets the result of a transaction.
    ///
    /// - Parameters:
    ///   - request: Request to send to GetTransactionResult.
    ///   - callOptions: Call options.
    /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
    public func getTransactionResult(
        _ request: Flow_Execution_GetTransactionResultRequest,
        callOptions: CallOptions? = nil
    ) -> UnaryCall<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse> {
        return makeUnaryCall(
            path: "/flow.execution.ExecutionAPI/GetTransactionResult",
            request: request,
            callOptions: callOptions ?? defaultCallOptions,
            interceptors: interceptors?.makeGetTransactionResultInterceptors() ?? []
        )
    }
}

public protocol Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol {
    /// - Returns: Interceptors to use when invoking 'ping'.
    func makePingInterceptors() -> [ClientInterceptor<Flow_Execution_PingRequest, Flow_Execution_PingResponse>]

    /// - Returns: Interceptors to use when invoking 'getAccountAtBlockID'.
    func makeGetAccountAtBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse>]

    /// - Returns: Interceptors to use when invoking 'executeScriptAtBlockID'.
    func makeExecuteScriptAtBlockIDInterceptors() -> [ClientInterceptor<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse>]

    /// - Returns: Interceptors to use when invoking 'getEventsForBlockIDs'.
    func makeGetEventsForBlockIDsInterceptors() -> [ClientInterceptor<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse>]

    /// - Returns: Interceptors to use when invoking 'getTransactionResult'.
    func makeGetTransactionResultInterceptors() -> [ClientInterceptor<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse>]
}

public final class Flow_Execution_ExecutionAPIClient: Flow_Execution_ExecutionAPIClientProtocol {
    public let channel: GRPCChannel
    public var defaultCallOptions: CallOptions
    public var interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol?

    /// Creates a client for the flow.execution.ExecutionAPI service.
    ///
    /// - Parameters:
    ///   - channel: `GRPCChannel` to the service host.
    ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
    ///   - interceptors: A factory providing interceptors for each RPC.
    public init(
        channel: GRPCChannel,
        defaultCallOptions: CallOptions = CallOptions(),
        interceptors: Flow_Execution_ExecutionAPIClientInterceptorFactoryProtocol? = nil
    ) {
        self.channel = channel
        self.defaultCallOptions = defaultCallOptions
        self.interceptors = interceptors
    }
}

/// ExecutionAPI is the API provided by the execution nodes.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Flow_Execution_ExecutionAPIProvider: CallHandlerProvider {
    var interceptors: Flow_Execution_ExecutionAPIServerInterceptorFactoryProtocol? { get }

    /// Ping is used to check if the access node is alive and healthy.
    func ping(request: Flow_Execution_PingRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Flow_Execution_PingResponse>

    /// GetAccountAtBlockID gets an account by address at the given block ID
    func getAccountAtBlockID(request: Flow_Execution_GetAccountAtBlockIDRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Flow_Execution_GetAccountAtBlockIDResponse>

    /// ExecuteScriptAtBlockID executes a ready-only Cadence script against the
    /// execution state at the block with the given ID.
    func executeScriptAtBlockID(request: Flow_Execution_ExecuteScriptAtBlockIDRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Flow_Execution_ExecuteScriptAtBlockIDResponse>

    /// GetEventsForBlockIDs retrieves events for all the specified block IDs that
    /// have the given type
    func getEventsForBlockIDs(request: Flow_Execution_GetEventsForBlockIDsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Flow_Execution_GetEventsForBlockIDsResponse>

    /// GetTransactionResult gets the result of a transaction.
    func getTransactionResult(request: Flow_Execution_GetTransactionResultRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Flow_Execution_GetTransactionResultResponse>
}

extension Flow_Execution_ExecutionAPIProvider {
    public var serviceName: Substring { return "flow.execution.ExecutionAPI" }

    /// Determines, calls and returns the appropriate request handler, depending on the request's method.
    /// Returns nil for methods not handled by this service.
    public func handle(
        method name: Substring,
        context: CallHandlerContext
    ) -> GRPCServerHandlerProtocol? {
        switch name {
        case "Ping":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Flow_Execution_PingRequest>(),
                responseSerializer: ProtobufSerializer<Flow_Execution_PingResponse>(),
                interceptors: interceptors?.makePingInterceptors() ?? [],
                userFunction: ping(request:context:)
            )

        case "GetAccountAtBlockID":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Flow_Execution_GetAccountAtBlockIDRequest>(),
                responseSerializer: ProtobufSerializer<Flow_Execution_GetAccountAtBlockIDResponse>(),
                interceptors: interceptors?.makeGetAccountAtBlockIDInterceptors() ?? [],
                userFunction: getAccountAtBlockID(request:context:)
            )

        case "ExecuteScriptAtBlockID":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Flow_Execution_ExecuteScriptAtBlockIDRequest>(),
                responseSerializer: ProtobufSerializer<Flow_Execution_ExecuteScriptAtBlockIDResponse>(),
                interceptors: interceptors?.makeExecuteScriptAtBlockIDInterceptors() ?? [],
                userFunction: executeScriptAtBlockID(request:context:)
            )

        case "GetEventsForBlockIDs":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Flow_Execution_GetEventsForBlockIDsRequest>(),
                responseSerializer: ProtobufSerializer<Flow_Execution_GetEventsForBlockIDsResponse>(),
                interceptors: interceptors?.makeGetEventsForBlockIDsInterceptors() ?? [],
                userFunction: getEventsForBlockIDs(request:context:)
            )

        case "GetTransactionResult":
            return UnaryServerHandler(
                context: context,
                requestDeserializer: ProtobufDeserializer<Flow_Execution_GetTransactionResultRequest>(),
                responseSerializer: ProtobufSerializer<Flow_Execution_GetTransactionResultResponse>(),
                interceptors: interceptors?.makeGetTransactionResultInterceptors() ?? [],
                userFunction: getTransactionResult(request:context:)
            )

        default:
            return nil
        }
    }
}

public protocol Flow_Execution_ExecutionAPIServerInterceptorFactoryProtocol {
    /// - Returns: Interceptors to use when handling 'ping'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makePingInterceptors() -> [ServerInterceptor<Flow_Execution_PingRequest, Flow_Execution_PingResponse>]

    /// - Returns: Interceptors to use when handling 'getAccountAtBlockID'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeGetAccountAtBlockIDInterceptors() -> [ServerInterceptor<Flow_Execution_GetAccountAtBlockIDRequest, Flow_Execution_GetAccountAtBlockIDResponse>]

    /// - Returns: Interceptors to use when handling 'executeScriptAtBlockID'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeExecuteScriptAtBlockIDInterceptors() -> [ServerInterceptor<Flow_Execution_ExecuteScriptAtBlockIDRequest, Flow_Execution_ExecuteScriptAtBlockIDResponse>]

    /// - Returns: Interceptors to use when handling 'getEventsForBlockIDs'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeGetEventsForBlockIDsInterceptors() -> [ServerInterceptor<Flow_Execution_GetEventsForBlockIDsRequest, Flow_Execution_GetEventsForBlockIDsResponse>]

    /// - Returns: Interceptors to use when handling 'getTransactionResult'.
    ///   Defaults to calling `self.makeInterceptors()`.
    func makeGetTransactionResultInterceptors() -> [ServerInterceptor<Flow_Execution_GetTransactionResultRequest, Flow_Execution_GetTransactionResultResponse>]
}
