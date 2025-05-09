//
//  5464.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5464
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 우선순위 큐, 큐

import Shared

public struct BOJ5464: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 1208B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var pricePerWeight = Array(repeating: 0, count: NM[0])
        var weights = Array(repeating: 0, count: NM[1])
        var park = Array(repeating: 0, count: NM[0])
        var queue = Queue<Int>()
        var earning = 0

        for row in 0..<NM[0] {
            pricePerWeight[row] = Int(readLine()!)!
        }

        for row in 0..<NM[1] {
            weights[row] = Int(readLine()!)!
        }

        for _ in 0..<NM[1]*2 {
            let car = Int(readLine()!)!

            if car > 0 {
                if let empty = park.firstIndex(of: 0) {
                    park[empty] = car
                } else {
                    queue.enqueue(car)
                }
            } else {
                let out = park.firstIndex(of: -car)!
                earning += pricePerWeight[out] * weights[-car-1]
                guard let next = queue.dequeue() else {
                    park[out] = 0
                    continue
                }

                park[out] = next
            }
        }

        print(earning)

        struct Queue<T> {
            var inQueue: [T] = []
            var outQueue: [T] = []

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
