//
//  1308.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1308
//  알고리즘 분류: 구현

class BOJ1308: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1327B
        let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let day1 = readLine()!.split(separator: " ").map { Int($0)! }
        let day2 = readLine()!.split(separator: " ").map { Int($0)! }
        var dDay = 0

        dDay += (day1[0]-1) * 365 + (day1[0]-1) / 4 - (day1[0]-1) / 100 + (day1[0]-1) / 400 + day1[2]
        dDay -= (day2[0]-1) * 365 + (day2[0]-1) / 4 - (day2[0]-1) / 100 + (day2[0]-1) / 400 + day2[2]

        if day1[1] == 2 {
            dDay += 31
        } else if day1[1] != 1 {
            if day1[0] % 400 == 0 {
                dDay += monthDays[..<(day1[1]-1)].reduce(1, +)
            } else if day1[0] % 100 == 0 {
                dDay += monthDays[..<(day1[1]-1)].reduce(0, +)
            } else if day1[0] % 4 == 0 {
                dDay += monthDays[..<(day1[1]-1)].reduce(1, +)
            } else {
                dDay += monthDays[..<(day1[1]-1)].reduce(0, +)
            }
        }

        if day2[1] == 2 {
            dDay -= 31
        } else if day2[1] != 1 {
            if day2[0] % 400 == 0 {
                dDay -= monthDays[..<(day2[1]-1)].reduce(1, +)
            } else if day1[0] % 100 == 0 {
                dDay -= monthDays[..<(day2[1]-1)].reduce(0, +)
            } else if day1[0] % 4 == 0 {
                dDay -= monthDays[..<(day2[1]-1)].reduce(1, +)
            } else {
                dDay -= monthDays[..<(day2[1]-1)].reduce(0, +)
            }
        }

        print((day1[0]+1000<day2[0]) || (day1[0]+1000==day2[0] && ((day1[1]==day2[1] && day1[2]<=day2[2]) || (day1[1] < day2[1]))) ? "gg" : "D\(dDay)")
    }
}
