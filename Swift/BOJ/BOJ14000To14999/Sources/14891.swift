//
//  14891.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/4/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14891
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ14891: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 974B
        var gear = Array(repeating: Array(repeating: 0, count: 8), count: 4)

        for idx in 0..<4 {
            gear[idx] = readLine()!.map { Int(String($0))! }
        }

        let K = Int(readLine()!)!

        for _ in 0..<K {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var dirs = Array(repeating: 0, count: 4)
            dirs[input[0]-1] = input[1]

            for idx in stride(from: input[0]-1, to: 0, by: -1) where gear[idx][6] != gear[idx-1][2] {
                dirs[idx-1] = -dirs[idx]
            }

            for idx in input[0]-1..<3 where gear[idx][2] != gear[idx+1][6] {
                dirs[idx+1] = -dirs[idx]
            }

            for idx in 0..<4 where dirs[idx] != 0 {
                rotateGear(&gear[idx], dirs[idx])
            }
        }

        print(gear[0][0] * 1 + gear[1][0] * 2 + gear[2][0] * 4 + gear[3][0] * 8)

        func rotateGear(_ gear: inout [Int], _ dir: Int) {
            if dir == 1 {
                let last = gear.removeLast()
                gear.insert(last, at: 0)
                return
            }

            let first = gear.removeFirst()
            gear.append(first)
        }
    }
}
