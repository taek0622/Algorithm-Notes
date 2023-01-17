//
//  1002.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/17.
//

// 문제: https://www.acmicpc.net/problem/1002

import Foundation

class BOJ1002: Solvable {
    func run() {
        // 메모리: 76512KB, 시간: 12ms 코드 길이: 790B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Double(String($0))! }
            let locations = [(input[0], input[1], input[2]), (input[3], input[4] , input[5])]
            let radiusDistance = sqrt(pow(locations[0].0 - locations[1].0, 2) + pow(locations[0].1 - locations[1].1, 2))

            if locations[0].0 == locations[1].0 && locations[0].1 == locations[1].1 && locations[0].2 == locations[1].2 {
                print(-1)
            } else if locations[0].2 + locations[1].2 > radiusDistance && abs(locations[1].2 - locations[0].2) < radiusDistance {
                print(2)
            } else if abs(locations[1].2 - locations[0].2) == radiusDistance || locations[0].2 + locations[1].2 == radiusDistance {
                print(1)
            } else {
                print(0)
            }
        }
    }
}
