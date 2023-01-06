//
//  2798.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/06.
//

// 문제: https://www.acmicpc.net/problem/2798

class BOJ2798: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 72244KB, 시간: 560ms, 코드 길이: 613B
    private func solution1() {
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

        print(M)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 472B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let cards = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = 0

        for first in 0..<cards.count-2 {
            for second in first+1..<cards.count-1 {
                for third in second+1..<cards.count {
                    let sum = cards[first] + cards[second] + cards[third]

                    if sum <= input[1] && sum > result {
                        result = sum
                    }
                }
            }
        }

        print(result)
    }
}
