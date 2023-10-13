//
//  DiagnosticResponse.swift
//  Tiket
//
//  Created by Wiliam Salim on 05/07/18.
//  Copyright © 2018 Tiket.com. All rights reserved.
//

import Foundation
import Unbox

class DiagnosticResponse: Unboxable {
    open var status: Int
    open var errorMessage: String?
    open var instruction: [String]?
    
    required init(unboxer: Unboxer) throws {
        status = try unboxer.unbox(keyPath: "diagnostic.status")
        errorMessage = try? unboxer.unbox(keyPath: "diagnostic.error_msgs")
        instruction = try? unboxer.unbox(keyPath: "diagnostic.instruction")
    }
    
    func getError() -> Error? {
        guard let errorMessage = errorMessage else { return nil }
        
        if !errorMessage.isEmpty && status > 200 {
            let error = NSError(domain: "diagnostic error",
                                code: status,
                                userInfo: [NSLocalizedDescriptionKey: errorMessage])
            return error
        }
        
        return nil
    }
}
