//
//  2798.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/06.
//

// 문제: https://www.acmicpc.net/problem/2798

class BOJ2798: Solvable {
    func run() {
        // 메모리: 72244KB, 시간: 560ms, 코드 길이: 647B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let cards = readLine()!.split(separator: " ").map { Int(String($0))! }
        var M = input[1]
        var sum = Set<Int>()

        for first in cards.indices {
            for second in cards.indices {
                if first == second {
                    continue
                }
                for third in cards.indices {
                    if first == third || second == third {
                        continue
                    }
                    sum.insert(cards[first] + cards[second] + cards[third])
                }
            }
        }
        let copiedSum = Array(sum)

        while copiedSum.firstIndex(of: M) == nil {
            M -= 1
        }
        print(copiedSum[copiedSum.firstIndex(of: M)!])
    }
}
