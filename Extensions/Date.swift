//
//  Date.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation

extension Date {
    
    var isDateYesterday: Bool {
        return Calendar.current.isDateInYesterday(self)
    }
    
    var isDateToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    var isDateTomorrow: Bool {
        return Calendar.current.isDateInTomorrow(self)
    }
    
    var isDateInWeekend: Bool {
        return Calendar.current.isDateInWeekend(self)
    }
    
    
    func string(with format: DateFormatter) -> String {
        return format.string(from: self)
    }
    
    init?(string: String, formatter: DateFormatter) {
        guard let date = formatter.date(from: string) else { return nil }
        self.init(timeIntervalSince1970: date.timeIntervalSince1970)
    }
}

