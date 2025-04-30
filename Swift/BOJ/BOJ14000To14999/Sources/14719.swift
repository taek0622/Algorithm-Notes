//
//  14719.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/28/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14719
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ14719: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 450B
    private func solution1() {
        _ = readLine()!.split(separator: " ").map { Int($0)! }
        var blocks = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        while !blocks.isEmpty {
            while blocks.first == 0 {
                blocks.removeFirst()
            }

            while blocks.last == 0 {
                blocks.removeLast()
            }

            for idx in blocks.indices {
                if blocks[idx] == 0 {
                    count += 1
                } else {
                    blocks[idx] -= 1
                }
            }
        }

        print(count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 327B
    private func solution2() {
        let HW = readLine()!.split(separator: " ").map { Int($0)! }
        let blocks = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        for idx in 1..<HW[1] {
            let pool = min(blocks[...idx].max() ?? 0, blocks[(idx+1)...].max() ?? 0)

            if blocks[idx] < pool {
                count += (pool - blocks[idx])
            }
        }

        print(count)
    }
}
