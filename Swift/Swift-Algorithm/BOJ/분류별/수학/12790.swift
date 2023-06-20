//
//  12790.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/20.
//

// 문제: https://www.acmicpc.net/problem/12790

class BOJ12790: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 293B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let stat = readLine()!.split(separator: " ").map { Int(String($0))! }
            let (hp, mp, atk, def) = (max(stat[0] + stat[4], 1), max(stat[1] + stat[5], 1), max(stat[2] + stat[6], 0), stat[3] + stat[7])

            print(hp + 5 * mp + 2 * atk + 2 * def)
        }
    }
}
