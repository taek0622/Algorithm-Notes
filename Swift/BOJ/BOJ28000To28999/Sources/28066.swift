//
//  28066.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28066
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 덱, 큐

import Shared

public struct BOJ28066: Solvable {
    public init() {}

    public func run() {
        // 메모리: 85252KB, 시간: 84ms, 코드 길이: 812B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var queue = Queue<Int>()
        var start = 1

        for num in 1...NK[0] {
            queue.enqueue(num)
        }

        while queue.count > 1 && queue.count >= NK[1] {
            for _ in 0..<NK[1] {
                _ = queue.dequeue()
            }

            queue.enqueue(start)
            start = queue.first!
        }

        print(start)

        struct Queue<T> {
            private var inQueue = [T]()
            private var outQueue = [T]()
            var count: Int {
                inQueue.count + outQueue.count
            }
            var first: T? {
                outQueue.last ?? inQueue.first
            }

            mutating func enqueue(_ element: T) {
                inQueue.append(element)
            }

            mutating func dequeue() -> T? {
                if outQueue.isEmpty {
                    outQueue = inQueue.reversed()
                    inQueue.removeAll()
                }

                return outQueue.popLast()
            }
        }
    }
}
