//
//  2143.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 3/31/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2143
//  알고리즘 분류: 자료 구조, 이분 탐색, 누적 합, 집합과 맵, 해시를 사용한 집합과 맵

import Shared

public struct BOJ2143: Solvable {
    public init() {}

    public func run() {
        // 메모리: 93912KB, 시간: 92ms, 코드 길이: 545B
        let T = Int(readLine()!)!
        let n = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let m = Int(readLine()!)!
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        var subA = [Int: Int]()
        var count = 0

        for startIdx in 0..<n {
            var sum = 0

            for lastIdx in startIdx..<n {
                sum += A[lastIdx]
                subA[sum, default: 0] += 1
            }
        }

        for startIdx in 0..<m {
            var sum = 0

            for lastIdx in startIdx..<m {
                sum += B[lastIdx]
                count += subA[T - sum, default: 0]
            }
        }

        print(count)
    }
}
