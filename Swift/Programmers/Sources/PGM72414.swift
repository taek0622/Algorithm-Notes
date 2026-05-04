//
//  PGM72414.swift
//  Programmers
//
//  Created by 김이안 on 5/4/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/68646
//  문제 분류: 2021 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM72414: Solvable {
    public init() {}

    public func run() {
        print(solution("02:03:55", "00:14:15", ["01:20:15-01:45:14", "00:40:31-01:00:00", "00:25:50-00:48:29", "01:30:59-01:53:29", "01:37:44-02:02:30"]) == "01:30:59")
        print(solution("99:59:59", "25:00:00", ["69:59:59-89:59:59", "01:00:00-21:00:00", "79:59:59-99:59:59", "11:00:00-31:00:00"]) == "01:00:00")
        print(solution("50:00:00", "50:00:00", ["15:36:51-38:21:49", "10:14:18-15:36:51", "38:21:49-42:51:45"]) == "00:00:00")
    }

    func solution(_ play_time: String, _ adv_time: String, _ logs: [String]) -> String {
        let playTime = timeToSecond(play_time)
        let advTime = timeToSecond(adv_time)
        var timeTable = Array(repeating: 0, count: playTime + 1)
        var bestTime = (0, 0)
        var times = [(Int, Int)]()
        var count = 0

        for log in logs {
            let log = log.split(separator: "-").map { String($0) }
            times.append((timeToSecond(log[0]), 1))
            times.append((timeToSecond(log[1]), -1))
        }

        times.sort(by: { $0.0 < $1.0 })

        for idx in times.indices {
            count += times[idx].1

            if idx == times.count - 1 { break }

            for time in times[idx].0..<times[idx+1].0 {
                timeTable[time] += count
            }
        }

        var time = 0
        var timeScore = timeTable[time..<time+advTime].reduce(0, +)

        while time < timeTable.count - advTime {
            if bestTime.1 < timeScore {
                bestTime = (time, timeScore)
            }

            timeScore -= timeTable[time]
            time += 1
            timeScore += timeTable[time+advTime-1]
        }

        var bestStart = ""
        bestStart += String(format: "%02d", bestTime.0 / 3600) + ":"
        bestTime.0 %= 3600
        bestStart += String(format: "%02d", bestTime.0 / 60) + ":"
        bestTime.0 %= 60
        bestStart += String(format: "%02d", bestTime.0)

        return bestStart
    }

    func timeToSecond(_ time: String) -> Int {
        let time = time.split(separator: ":").map { Int($0)! }
        return time[0] * 3600 + time[1] * 60 + time[2]
    }
}
