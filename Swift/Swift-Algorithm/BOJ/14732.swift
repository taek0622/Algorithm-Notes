//
//  14732.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14732
//  알고리즘 분류: 구현

class BOJ14732: Solvable {
    func run() {
        // 메모리: 69372KB, 시간: 20ms, 코드 길이: 373B
        let N = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: false, count: 501), count: 501)
        var count = 0

        for _ in 0..<N {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }

            for row in xy[0]..<xy[2] {
                for col in xy[1]..<xy[3] where !map[row][col] {
                    map[row][col] = true
                    count += 1
                }
            }
        }

        print(count)
    }
}
