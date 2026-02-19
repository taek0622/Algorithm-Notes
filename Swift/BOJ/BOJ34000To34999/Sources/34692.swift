//
//  34692.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 2/19/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34692
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 우선순위 큐

import Shared

public struct BOJ34692: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 4ms, 코드 길이: 314B
    private func solution1() {
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var device = Array(repeating: 0, count: NMK[1])
        let waiting = readLine()!.split(separator: " ").map { Int($0)! }

        for idx in 0..<NMK[0] {
            device[device.firstIndex(of: device.min()!)!] += waiting[idx]
        }

        print(device.min()! <= NMK[2] ? "WAIT" : "GO")
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1348B
    private func solution2() {
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var device = Heap()
        let waiting = readLine()!.split(separator: " ").map { Int($0)! }

        for _ in 0..<NMK[1] {
            device.push(0)
        }

        for idx in 0..<NMK[0] {
            let waited = device.pop() ?? 0
            device.push(waited + waiting[idx])
        }

        print(device.min <= NMK[2] ? "WAIT" : "GO")

        struct Heap {

            private var heap = [0]

            var isEmpty: Bool {
                return heap.count == 1
            }

            var min: Int {
                return isEmpty ? 0 : heap[1]
            }

            mutating func push(_ newElement: Int) {
                var idx = heap.count
                heap.append(newElement)

                while idx > 1, heap[idx/2] > heap[idx] {
                    heap.swapAt(idx, idx/2)
                    idx /= 2
                }
            }

            mutating func pop() -> Int? {
                if isEmpty { return nil }
                if heap.count == 2 { return heap.removeLast() }

                heap.swapAt(1, heap.count - 1)
                let popped = heap.removeLast()
                var idx = 1

                while idx * 2 < heap.count {
                    let left = idx * 2
                    let right = left + 1
                    let next = right < heap.count && heap[right] < heap[left] ? right : left

                    if heap[idx] > heap[next] {
                        heap.swapAt(idx, next)
                        idx = next
                    } else {
                        break
                    }
                }

                return popped
            }
        }
    }
}
