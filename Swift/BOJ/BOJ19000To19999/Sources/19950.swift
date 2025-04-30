//
//  19950.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/19950
//  알고리즘 분류: 그리디 알고리즘, 기하학, 3차원 기하학

import Foundation

class BOJ19950: Solvable {
    func run() {
        // 메모리: 79516KB, 시간: 12ms, 코드 길이: 572B
        let locations = readLine()!.split(separator: " ").map { Double($0)! }
        let _ = Int(readLine()!)!
        let sticks = readLine()!.split(separator: " ").map { Double($0)! }.sorted()
        let totalStickLength = sticks.reduce(0, +)
        let distance = sqrt(pow(locations[3] - locations[0], 2) + pow(locations[4] - locations[1], 2) + pow(locations[5] - locations[2], 2))

        if totalStickLength < distance {
            print("NO")
        } else if totalStickLength == distance {
            print("YES")
        } else {
            print(sticks.last! - (totalStickLength - sticks.last!) <= distance ? "YES" : "NO")
        }
    }
}
