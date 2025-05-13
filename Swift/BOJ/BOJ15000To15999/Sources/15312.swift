//
//  15312.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15312
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ15312: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69236KB, 시간: 40ms, 코드 길이: 540B
        let counts = [3, 2, 1, 2, 3, 3, 2, 3, 3, 2, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 2, 2, 1]
        let A = readLine()!.map { counts[Int($0.asciiValue!) - 65] }
        let B = readLine()!.map { counts[Int($0.asciiValue!) - 65] }
        var result = [Int]()

        for idx in 0..<A.count {
            result.append(A[idx])
            result.append(B[idx])
        }

        while result.count > 2 {
            var temp = [Int]()

            for idx in 1..<result.count {
                let new = (result[idx - 1] + result[idx]) % 10
                temp.append(new)
            }

            result = temp
        }

        print("\(result[0])\(result[1])")
    }
}
