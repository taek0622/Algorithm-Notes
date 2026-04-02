//
//  1162.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/2/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1162
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 최단 경로, 데이크스트라

import Shared

public struct BOJ1162: Solvable {
    public init() {}

    public func run() {
        // 메모리: 75020KB, 시간: 212ms, 코드 길이: 2633B
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var minCosts = Array(repeating: Array(repeating: 50000 * 1000000 + 1, count: NMK[2]+1), count: NMK[0])
        var costs = Array(repeating: [(node: Int, cost: Int)](), count: NMK[0])
        var heap = Heap<Path>(compare: <)
        heap.push(Path(cost: 0, node: 0, packagingCount: 0))
        minCosts[0][0] = 0

        for _ in 0..<NMK[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            costs[input[0]-1].append((input[1]-1, input[2]))
            costs[input[1]-1].append((input[0]-1, input[2]))
        }

        while !heap.isEmpty {
            let path = heap.pop()!

            if path.cost > minCosts[path.node][path.packagingCount] {
                continue
            }

            for (next, cost) in costs[path.node] {
                let newCost = path.cost + cost

                if newCost < minCosts[next][path.packagingCount] {
                    minCosts[next][path.packagingCount] = newCost
                    heap.push(Path(cost: newCost, node: next, packagingCount: path.packagingCount))
                }

                if path.packagingCount < NMK[2] && path.cost < minCosts[next][path.packagingCount+1] {
                    minCosts[next][path.packagingCount+1] = path.cost
                    heap.push(Path(cost: path.cost, node: next, packagingCount: path.packagingCount + 1))
                }
            }
        }

        print(minCosts[NMK[0]-1].min()!)

        struct Path: Comparable {
            let cost: Int
            let node: Int
            let packagingCount: Int

            static func < (lhs: Path, rhs: Path) -> Bool {
                return lhs.cost < rhs.cost
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            private var compare: (T, T) -> Bool
            var isEmpty: Bool {
                return heap.isEmpty
            }

            init(compare: @escaping (T, T) -> Bool) {
                self.compare = compare
            }

            mutating func push(_ element: T) {
                var idx = heap.count
                heap.append(element)

                while idx > 0 {
                    let prev = (idx - 1) / 2

                    if compare(heap[idx], heap[prev]) {
                        heap.swapAt(idx, prev)
                        idx = prev
                    } else {
                        break
                    }
                }
            }

            mutating func pop() -> T? {
                if isEmpty { return nil }

                var idx = 0
                heap.swapAt(idx, heap.count - 1)
                let res = heap.removeLast()

                while idx * 2 + 1 < heap.count {
                    var next = idx * 2 + 1

                    if idx * 2 + 2 < heap.count && compare(heap[next+1], heap[next]) {
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
