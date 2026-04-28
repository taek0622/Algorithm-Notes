//
//  PGM64062.swift
//  Programmers
//
//  Created by 김이안 on 4/28/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/64062
//  문제 분류: 2019 카카오 개발자 겨울 인턴십

import Foundation

import Shared

public struct PGM64062: Solvable {
    public init() {}

    public func run() {
        print(solution([2, 4, 5, 3, 2, 1, 4, 2, 5, 1], 3))
    }

    public func solution(_ stones: [Int], _ k: Int) -> Int {
        var deque = Deque<Int>()
        var minCount = Int.max

        for idx in stones.indices {
            while !deque.isEmpty && stones[deque.last!] < stones[idx] {
                deque.popLast()
            }

            deque.pushLast(idx)

            while !deque.isEmpty && deque.first! <= idx - k {
                deque.popFirst()
            }

            if idx >= k - 1 {
                minCount = min(minCount, stones[deque.first!])
            }
        }

        return minCount

        struct Deque<T> {
            var deque = [T]()
            var idx = 0
            var isEmpty: Bool {
                return idx >= deque.count
            }
            var first: T? {
                if isEmpty { return nil }
                return deque[idx]
            }
            var last: T? {
                return deque.last
            }

            mutating func pushLast(_ element: T) {
                deque.append(element)
            }

            mutating func popFirst() -> T? {
                if isEmpty { return nil }

                let res = deque[idx]
                idx += 1
                return res
            }

            mutating func popLast() -> T? {
                if isEmpty { return nil }
                return deque.popLast()
            }
        }
    }
}
