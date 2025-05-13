//
//  14938.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14938
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ14938: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 856B
    // 플로이드-워셜
    private func solution1() {
        let nmr = readLine()!.split(separator: " ").map { Int($0)! }
        let t = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: Array(repeating: 1000001, count: nmr[0]), count: nmr[0])
        var maxItems = 0

        for idx in 0..<nmr[0] {
            graph[idx][idx] = 0
        }

        for _ in 0..<nmr[2] {
            let abl = readLine()!.split(separator: " ").map { Int($0)! }
            graph[abl[0]-1][abl[1]-1] = abl[2]
            graph[abl[1]-1][abl[0]-1] = abl[2]
        }

        for mid in 0..<nmr[0] {
            for row in 0..<nmr[0] {
                for col in 0..<nmr[0] where graph[row][mid] + graph[mid][col] < graph[row][col] {
                    graph[row][col] = graph[row][mid] + graph[mid][col]
                }
            }
        }

        for row in 0..<nmr[0] {
            var items = 0

            for col in 0..<nmr[0] where graph[row][col] <= nmr[1] {
                items += t[col]
            }

            maxItems = max(maxItems, items)
        }

        print(maxItems)
    }

    // 메모리: 69116KB, 시간: 12ms, 코드 길이: 2964B
    // 다익스트라(데이크스트라)
    private func solution2() {
        let nmr = readLine()!.split(separator: " ").map { Int($0)! }
        let t = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: Array(repeating: 1000001, count: nmr[0]), count: nmr[0])
        var maxItems = 0

        for idx in 0..<nmr[0] {
            graph[idx][idx] = 0
        }

        for _ in 0..<nmr[2] {
            let abl = readLine()!.split(separator: " ").map { Int($0)! }
            graph[abl[0]-1][abl[1]-1] = abl[2]
            graph[abl[1]-1][abl[0]-1] = abl[2]
        }

        for row in 0..<nmr[0] {
            var heap = Heap<Edge>()
            var dp = Array(repeating: 1000001, count: nmr[0])
            var items = 0
            heap.push(Edge(region: row, distance: 0))

            while !heap.isEmpty {
                let current = heap.pop()!

                if dp[current.region] < current.distance {
                    continue
                }

                for next in 0..<nmr[0] where current.distance + graph[current.region][next] < dp[next] {
                    dp[next] = current.distance + graph[current.region][next]
                    heap.push(Edge(region: next, distance: dp[next]))
                }
            }

            for idx in dp.indices where dp[idx] <= nmr[1] {
                items += t[idx]
            }

            maxItems = max(maxItems, items)
        }

        print(maxItems)

        struct Edge: Comparable {
            var region: Int
            var distance: Int

            static func < (lhs: Edge, rhs: Edge) -> Bool {
                lhs.distance < rhs.distance
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var isEmpty: Bool {
                heap.count < 2
            }

            mutating func push(_ data: T) {
                if heap.isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var idx = heap.count
                heap.append(data)

                while idx > 1 && heap[idx] < heap[idx/2] {
                    heap.swapAt(idx, idx/2)
                    idx /= 2
                }
            }

            mutating func pop() -> T? {
                if isEmpty {
                    return nil
                }

                heap.swapAt(1, heap.count - 1)
                let result = heap.removeLast()
                var idx = 1

                while idx < heap.count {
                    let left = idx * 2
                    let right = left + 1

                    if right < heap.count {
                        if heap[left] < heap[idx] && heap[right] < heap[idx] {
                            if heap[left] < heap[right] {
                                heap.swapAt(idx, left)
                                idx = left
                            } else {
                                heap.swapAt(idx, right)
                                idx = right
                            }
                        } else if heap[left] < heap[idx] {
                            heap.swapAt(idx, left)
                            idx = left
                        } else if heap[right] < heap[idx] {
                            heap.swapAt(idx, right)
                            idx = right
                        } else {
                            break
                        }
                    } else if left < heap.count && heap[left] < heap[idx] {
                        heap.swapAt(idx, left)
                        idx = left
                    } else {
                        break
                    }
                }

                return result
            }
        }
    }
}
