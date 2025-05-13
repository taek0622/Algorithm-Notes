//
//  2166.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2166
//  알고리즘 분류: 기하학, 다각형의 넓이

import Shared

public struct BOJ2166: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69764KB, 시간: 24ms, 코드 길이: 412B
        let N = Int(readLine()!)!
        var numbers = Array(repeating: [0.0, 0.0], count: N+1)
        var (temp1, temp2) = (0.0, 0.0)

        for idx in 0..<N {
            numbers[idx] = readLine()!.split(separator: " ").map { Double($0)! }
        }

        numbers[N] = numbers[0]

        for idx in 0..<N {
            temp1 += numbers[idx][0] * numbers[idx+1][1]
            temp2 += numbers[idx][1] * numbers[idx+1][0]
        }

        print((temp1 > temp2 ? (temp1-temp2) : (temp2-temp1)) / 2)
    }
}
