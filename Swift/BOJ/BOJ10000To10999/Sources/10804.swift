//
//  10804.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10804
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ10804: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 208B
        var cards = Array(1...20)
        
        for _ in 0..<10 {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            cards[input[0]...input[1]].reverse()
        }

        cards.forEach {
            print($0, terminator: " ")
        }
    }
}
