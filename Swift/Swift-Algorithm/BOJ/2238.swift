//
//  2238.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2238
//  알고리즘 분류: 구현

class BOJ2238: Solvable {
    func run() {
        // 메모리: 72012KB, 시간: 148ms, 코드 길이: 470B
        let UN = readLine()!.split(separator: " ").map { Int($0)! }
        var prices = Array(repeating: [String](), count: UN[0])

        for _ in 0..<UN[1] {
            let SP = readLine()!.split(separator: " ").map { String($0) }
            prices[Int(SP[1])! - 1].append(SP[0])
        }

        var minCount = Int.max
        var minIdx = 0

        for idx in 0..<UN[0] where !prices[idx].isEmpty && prices[idx].count < minCount {
            minCount = prices[idx].count
            minIdx = idx
        }

        print("\(prices[minIdx].first!) \(minIdx + 1)")
    }
}
