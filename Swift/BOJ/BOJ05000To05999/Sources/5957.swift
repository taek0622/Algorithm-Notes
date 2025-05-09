//
//  5957.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 5/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5957
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 스택

import Shared

public struct BOJ5957: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69640KB, 시간: 8ms, 코드 길이: 340B
        let N = Int(readLine()!)!
        var dishes = [Array(1...N).reversed(), [Int](), [Int]()]

        while dishes[2].count < N {
            let CD = readLine()!.split(separator: " ").map { Int($0)! }

            for _ in 0..<CD[1] {
                dishes[CD[0]].append(dishes[CD[0]-1].removeLast())
            }
        }

        print(dishes[2].reversed().map { String($0) }.joined(separator: "\n"))
    }
}
