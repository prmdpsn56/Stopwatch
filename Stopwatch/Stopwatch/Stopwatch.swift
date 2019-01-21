//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by psingh85 on 1/14/19.
//  Copyright © 2019 psingh85 All rights reserved.
//

import Foundation

class Stopwatch{
    
    private var startTime: Date?
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        startTime = Date()
    }
    
    func stop() {
        startTime = nil
    }
    
}
