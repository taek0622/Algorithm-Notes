//
//  2161.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2161
//  알고리즘 분류: 구현, 자료 구조, 큐

class BOJ2161: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 258B
        let N = Int(readLine()!)!
        var cards = Array(1...N)
        var result = ""
        var idx = 0

        while idx < cards.count {
            result += "\(cards[idx]) "
            idx += 1

            if idx >= cards.count {
                break
            }

            cards.append(cards[idx])
            idx += 1
        }

        print(result)
    }
}
