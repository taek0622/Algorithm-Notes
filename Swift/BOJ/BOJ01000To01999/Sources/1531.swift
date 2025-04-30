//
//  1531.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1531
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ1531: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 482B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var pictures = Array(repeating: Array(repeating: 0, count: 100), count: 100)
        var count = 0

        for _ in 0..<NM[0] {
            let xy = readLine()!.split(separator: " ").map { Int($0)! - 1 }

            for row in xy[0]...xy[2] {
                for col in xy[1]...xy[3] {
                    pictures[row][col] += 1
                }
            }
        }

        for row in 0..<100 {
            for col in 0..<100 where pictures[row][col] > NM[1] {
                count += 1
            }
        }

        print(count)
    }
}
