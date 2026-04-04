//
//  13334.swift
//  BOJ13000To13999
//
//  Created by 김이안 on 4/4/26.
//

//  문제 링크: https://www.acmicpc.net/problem/13334
//  알고리즘 분류: 자료 구조, 정렬, 스위핑, 우선순위 큐

import Shared

public struct BOJ13334: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72740KB, 시간: 172ms, 코드 길이: 1816B
        let n = Int(readLine()!)!
        var lines = [(Int, Int)]()

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            lines.append((input[0], input[1]))
        }

        let d = Int(readLine()!)!
        lines.sort(by: { $0.1 < $1.1 })

        var heap = Heap<Int>(compare: <)
        var maxCount = 0

        for idx in lines.indices where lines[idx].1 - lines[idx].0 <= d {
            heap.push(lines[idx].0)

            while let first = heap.first, lines[idx].1 - first > d {
                heap.pop()
            }

            maxCount = max(maxCount, heap.count)
        }

        print(maxCount)

        struct Heap<T: Comparable> {
            private var heap = [T]()
            private var compare: (T, T) -> Bool
            var isEmpty: Bool {
                return heap.isEmpty
            }
            var first: T? {
                return heap[0]
            }
            var count: Int {
                return heap.count
            }

            init(compare: @escaping (T, T) -> Bool) {
                self.compare = compare
            }

            mutating func push(_ element: T) {
                var idx = heap.count
                heap.append(element)

                while idx > 0 {
                    let next = (idx-1) / 2

                    if compare(heap[idx], heap[next]) {
                        heap.swapAt(idx, next)
                        idx = next
                    } else {
                        break
                    }
                }
            }

            mutating func pop() -> T? {
                if isEmpty {
                    return nil
                }

                heap.swapAt(0, heap.count - 1)
                let res = heap.removeLast()
                var idx = 0

                while idx * 2 + 1 < heap.count {
                    var next = idx * 2 + 1

                    if next + 1 < heap.count && compare(heap[next+1], heap[next]) {
                        next += 1
                    }

                    if compare(heap[next], heap[idx]) {
                        heap.swapAt(idx, next)
                        idx = next
                    } else {
                        break
                    }
                }

                return res
            }
        }
    }
}
