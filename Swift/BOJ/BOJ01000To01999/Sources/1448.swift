//
//  1448.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/01.
//

// 문제: https://www.acmicpc.net/problem/1448

import Shared

public struct BOJ1448: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 81592KB, 시간: 564ms, 코드 길이: 269B
    private func solution1() {
        let N = Int(readLine()!)!
        var sides = [Int]()

        for _ in 0..<N {
            sides.append(Int(readLine()!)!)
        }

        sides.sort(by: >)

        while sides.count >= 3 && sides[0] >= sides[1] + sides[2] {
            sides.removeFirst()
        }

        print(sides.count < 3 ? -1 : sides[0] + sides[1] + sides[2])
    }

    // 메모리: 81592KB, 시간: 556ms, 코드 길이: 298B
    private func solution2() {
        let N = Int(readLine()!)!
        var sides = [Int]()
        var result = -1

        for _ in 0..<N {
            sides.append(Int(readLine()!)!)
        }

        sides.sort(by: >)

        for idx in 0...(N - 3) where sides[idx] < sides[idx + 1] + sides[idx + 2] {
            result = sides[idx] + sides[idx + 1] + sides[idx + 2]
            break
        }

        print(result)
    }
}
