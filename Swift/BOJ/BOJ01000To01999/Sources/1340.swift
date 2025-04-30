//
//  1340.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1340
//  알고리즘 분류: 구현, 문자열, 파싱

class BOJ1340: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1163B
        let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let today = readLine()!.split(separator: " ")
        var month = 0
        let day = today[1].split(separator: ",").map { Int($0)! }.first!
        let year = Int(today[2])!
        let times = today[3].split(separator: ":").map { Int($0)! }
        var totalDays = monthDays.reduce(0, +)

        switch today[0] {
            case "January":
                month = 1
            case "February":
                month = 2
            case "March":
                month = 3
            case "April":
                month = 4
            case "May":
                month = 5
            case "June":
                month = 6
            case "July":
                month = 7
            case "August":
                month = 8
            case "September":
                month = 9
            case "October":
                month = 10
            case "November":
                month = 11
            case "December":
                month = 12
            default:
                break
        }

        var todayDays = monthDays[..<(month-1)].reduce(0, +) + day - 1

        if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) {
            if month > 2 {
                todayDays += 1
            }

            totalDays += 1
        }

        let totalTimes = totalDays * 24 * 60
        let todayTimes = todayDays * 24 * 60 + times[0] * 60 + times[1]

        print(Double(todayTimes) / Double(totalTimes) * 100)
    }
}
