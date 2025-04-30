//
//  5575.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/13.
//

// 문제: https://www.acmicpc.net/problem/5575

class BOJ5575: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 317B
        for _ in 0..<3 {
            let time = readLine()!.split(separator: " ").map { Int(String($0))! }
            let start = time[0] * 60 * 60 + time[1] * 60 + time[2]
            let end = time[3] * 60 * 60 + time[4] * 60 + time[5]
            let sec = end - start
            let min = sec / 60
            let hour = min / 60
            print(hour, min % 60, sec % 60)
        }
    }
}
