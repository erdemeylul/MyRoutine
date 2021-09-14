//
//  ExamModel.swift
//  ApiIntegration
//
//  Created by Erdem Senol on 14.09.2021.
//

import Foundation

struct Product: Codable {
    let status: Bool
    let routine: [Routine]
}

struct Routine: Codable {
    let id: Int
    let productName: String
    let image: String
    let whenToUse: WhenToUse
    let type: TypeClass
   

    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case image
        case whenToUse = "when_to_use"
        case type = "type"
    }
}

struct WhenToUse: Codable {
    let am, pm, amPm, onceWeeklyAm: Int
    let onceWeeklyPm, twiceWeeklyAm, twiceWeeklyPm: Int

    enum CodingKeys: String, CodingKey {
        case am, pm
        case amPm = "am_pm"
        case onceWeeklyAm = "once_weekly_am"
        case onceWeeklyPm = "once_weekly_pm"
        case twiceWeeklyAm = "twice_weekly_am"
        case twiceWeeklyPm = "twice_weekly_pm"
    }
}

struct TypeClass: Codable {
    let name: String
}



