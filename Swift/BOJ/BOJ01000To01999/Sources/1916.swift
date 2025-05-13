//
//  1916.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/16/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1916
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로

import Shared

public struct BOJ1916: Solvable {
    public init() {}

    public func run() {
        // 메모리: 77000KB, 시간: 188ms, 코드 길이: 2660B
        let N  = Int(readLine()!)!
        let M = Int(readLine()!)!
        var costs = Array(repeating: Array(repeating: 100000001, count: N), count: N)
        var heap = Heap<Route>()

        for _ in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            costs[input[0]-1][input[1]-1] = min(input[2], costs[input[0]-1][input[1]-1])
        }

        for idx in 0..<N {
            costs[idx][idx] = 0
        }

        let city = readLine()!.split(separator: " ").map { Int(String($0))! }
        var dp = Array(repeating: 100000001, count: N)

        heap.push(Route(dest: city[0]-1, cost: 0))

        while !heap.isEmpty {
            let current = heap.pop()!

            if dp[current.dest] < current.cost {
                continue
            }

            for idx in 0..<N where current.cost + costs[current.dest][idx] < dp[idx] {
                dp[idx] = current.cost + costs[current.dest][idx]
                heap.push(Route(dest: idx, cost: current.cost + costs[current.dest][idx]))
            }
        }

        print(dp[city[1]-1])

        struct Route: Comparable {
            var dest: Int
            var cost: Int

            static func < (lhs: Route, rhs: Route) -> Bool {
                lhs.cost < rhs.cost
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var isEmpty: Bool { heap.count < 2 }

            mutating func push(_ data: T) {
                if isEmpty {
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
                if isEmpty { return nil }

                heap.swapAt(1, heap.count - 1)
                let result = heap.removeLast()
                var idx = 1

                while idx * 2 < heap.count {
                    let left = idx * 2
                    let right = left + 1

                    if right < heap.count {
                        if heap[idx] > heap[left] && heap[idx] > heap[right] {
                            if heap[left] < heap[right] {
                                heap.swapAt(idx, left)
                                idx *= 2
                            } else {
                                heap.swapAt(idx, right)
                                idx = right
                            }
                        } else if heap[idx] > heap[left] {
                            heap.swapAt(idx, left)
                            idx *= 2
                        } else if heap[idx] > heap[right] {
                            heap.swapAt(idx, right)
                            idx = right
                        } else {
                            break
                        }
                    } else if heap[idx] > heap[left] {
                        heap.swapAt(idx, left)
                        idx *= 2
                    } else {
                        break
                    }
                }

                return result
            }
        }
    }
}
