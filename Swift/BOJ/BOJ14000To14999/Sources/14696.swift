//
//  14696.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14696
//  알고리즘 분류: 구현

class BOJ14696: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 40ms, 코드 길이: 537B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var cards = Array(repeating: 0, count: 4)
            var winner = "D"

            for card in readLine()!.split(separator: " ").map { Int($0)! - 1 }[1...] {
                cards[card] += 1
            }

            for card in readLine()!.split(separator: " ").map { Int($0)! - 1 }[1...] {
                cards[card] -= 1
            }

            for card in cards.reversed() where card != 0 {
                if card > 0 {
                    winner = "A"
                } else if card < 0 {
                    winner = "B"
                }

                break
            }

            print(winner)
        }
    }
}
