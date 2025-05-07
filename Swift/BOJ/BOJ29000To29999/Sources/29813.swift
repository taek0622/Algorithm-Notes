//
//  29813.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29813
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

import Shared

public struct BOJ29813: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 824B
        var queue = Queue<(String, Int)>()
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            queue.enqueue((input[0], Int(input[1])!))
        }

        while queue.count > 1 {
            var first = queue.dequeue()!

            while first.1 > 1 {
                queue.enqueue(queue.dequeue()!)
                first.1 -= 1
            }

            _ = queue.dequeue()
        }

        print(queue.dequeue()!.0)

        struct Queue<T> {
            private var inQueue = [T]()
            private var outQueue = [T]()
            var count: Int {
                return inQueue.count + outQueue.count
            }

            mutating func enqueue(_ element: T) {
                inQueue.append(element)
            }

            mutating func dequeue() -> T? {
                if outQueue.isEmpty {
                    outQueue = inQueue.reversed()
                    inQueue = []
                }

                return outQueue.popLast()
            }
        }
    }
}
