//
//  2303.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2303
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ2303: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 674B
        let N = Int(readLine()!)!
        var maxCardSum = Array(repeating: 0, count: N)

        for idx in 0..<N {
            let cards = readLine()!.split(separator: " ").map { Int($0)! }
            var maxSum = 0

            for firstCard in 0..<5 {
                for secondCard in firstCard+1..<5 {
                    for thirdCard in secondCard+1..<5 where maxSum < (cards[firstCard] + cards[secondCard] + cards[thirdCard]) % 10 {
                        maxSum = (cards[firstCard] + cards[secondCard] + cards[thirdCard]) % 10
                    }
                }
            }

            maxCardSum[idx] = maxSum
        }

        var maxPerson = (0, 0)

        for idx in 0..<N where maxPerson.1 <= maxCardSum[idx] {
            maxPerson = (idx + 1, maxCardSum[idx])
        }

        print(maxPerson.0)
    }
}
