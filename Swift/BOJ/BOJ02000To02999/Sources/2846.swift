//
//  2846.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 6/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2846
//  알고리즘 분류: 구현

import Shared

public struct BOJ2846: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 279B
        let N = Int(readLine()!)!
        let Pi = readLine()!.split(separator: " ").map { Int($0)! }
        var maxASC = 0
        var asc = 0

        for idx in 1..<N {
            if Pi[idx] > Pi[idx-1] {
                asc += Pi[idx] - Pi[idx-1]
            } else {
                asc = 0
            }

            maxASC = max(maxASC, asc)
        }

        print(maxASC)
    }
}
