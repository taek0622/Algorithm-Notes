//
//  11052.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/22/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11052
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11052: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 361B
        let N = Int(readLine()!)!
        var cards = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }

        for idx in 2...N {
            if idx >= cards.count {
                cards.append(0)
            }

            var maxPrice = max(0, cards[idx])

            for num in 0...idx/2 {
                maxPrice = max(maxPrice, cards[num] + cards[idx-num])
            }

            cards[idx] = maxPrice
        }

        print(cards[N])
    }
}
