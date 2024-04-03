// RUN: %{swiftc} %s -typecheck -warn-concurrency -warnings-as-errors

#if os(macOS)
    import SwiftXCTest
#else
    import XCTest
#endif

if #available(macOS 10.15, *) {
    let expectation = XCTestExpectation()
    Task.detached {
        expectation.fulfill()
    }
}
