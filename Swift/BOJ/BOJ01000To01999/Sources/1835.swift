//
//  1835.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/07.
//

//  문제 링크: https://www.acmicpc.net/problem/1835
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 덱

import Shared

public struct BOJ1835: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 44ms, 코드 길이: 284B
        let N = Int(readLine()!)!
        var cards = Array(1...N)
        var origin = [Int]()

        for num in 1...N {
            for _ in 0..<num {
                cards.append(cards.removeFirst())
            }

            origin.append(cards.removeFirst())
        }

        for num in 1...N {
            print(origin.firstIndex(of: num)!+1, terminator: " ")
        }
    }
}
