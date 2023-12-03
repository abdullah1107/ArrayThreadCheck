//
//  CheckArrayThreadSafeTests.swift
//  CheckArrayThreadSafeTests
//
//  Created by Muhammad Mamun on 2/12/23.
//

import XCTest
@testable import CheckArrayThreadSafe

final class CheckArrayThreadSafeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testArrayThreadSafeTest(){
        let objectClass = ArryViewModel()
        let serialQueue = DispatchQueue(label: "array-safetycheck")
        let totalThreadIteration = 100
        for value in 1...totalThreadIteration{
            serialQueue.async {
                objectClass.appendElement(value: value)
            }
        }
        for _ in 1...totalThreadIteration{
            serialQueue.sync {
                print(objectClass.readElement())
            }
        }
        XCTAssertEqual(objectClass.readElement(), totalThreadIteration)
    }


}
