//
//  StudyTableItem.swift
//
//  Created for the CardinalKit Framework.
//  Copyright © 2019 Stanford University. All rights reserved.
//

import Foundation
import UIKit

enum StudyTableItem: Int {
    
    // table items
    case survey, activeTask, showQRCode, syncMedicalProfile
    
    static var allValues: [StudyTableItem] {
        var index = 0
        return Array (
            AnyIterator {
                let returnedElement = self.init(rawValue: index)
                index = index + 1
                return returnedElement
            }
        )
    }
    
    var title: String {
        switch self {
        case .survey:
            return "Add New Prescription"
        case .activeTask:
            return "See All Prescriptions"
        case .showQRCode:
            return "Show QR Code"
        case .syncMedicalProfile:
            return "Sync Medical Profile"
   
        }
    }
    
    var subtitle: String {
        switch self {
        case .survey:
            return "text"
        case .activeTask:
            return "more text"
        case .showQRCode:
            return "text"
        case .syncMedicalProfile:
            return "text"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .survey:
            return UIImage(named: "SurveyIcon")
        default:
            return UIImage(named: "ActivityIcon")
        }
    }
}
