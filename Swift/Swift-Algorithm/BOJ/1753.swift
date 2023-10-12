//
//  1753.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/12/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1753
//  알고리즘 분류: 그래프 이론, 데이트스트라, 최단 경로

class BOJ1753: Solvable {
    func run() {
        // 메모리: 82452KB, 시간: 588ms, 코드 길이: 2885B
        let INF = Int.max
        let VE = readLine()!.split(separator: " ").map { Int(String($0))! }
        let K = Int(readLine()!)! - 1
        var graph = Array(repeating: [(Int, Int)](), count: VE[0])
        var heap = Heap<Edge>()

        for _ in 0..<VE[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[input[0]-1].append((input[1]-1, input[2]))
        }

        var dp = Array(repeating: INF, count: VE[0])
        dp[K] = 0
        heap.insert(Edge(node: K, weight: 0))

        while !heap.isEmpty {
            let current = heap.pop()!

            if dp[current.node] < current.weight {
                continue
            }

            for next in graph[current.node] where current.weight + next.1 < dp[next.0] {
                dp[next.0] = current.weight + next.1
                heap.insert(Edge(node: next.0, weight: current.weight + next.1))
            }
        }

        for num in dp {
            print(num == INF ? "INF" : num)
        }

        struct Edge: Comparable {
            var node: Int
            var weight: Int

            static func < (lhs: Edge, rhs: Edge) -> Bool {
                lhs.weight < rhs.weight
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()

            var isEmpty: Bool {
                heap.count < 2
            }

            mutating func insert(_ data: T) {
                if heap.isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var insertIdx = heap.count
                heap.append(data)

                while insertIdx > 1 && heap[insertIdx/2] > heap[insertIdx] {
                    heap.swapAt(insertIdx/2, insertIdx)
                    insertIdx = insertIdx/2
                }
            }

            mutating func pop() -> T? {
                if heap.count < 2 {
                    return nil
                }

                if heap.count == 2 {
                    return heap.removeLast()
                }

                heap.swapAt(1, heap.count - 1)
                let result = heap.removeLast()

                var idx = 1

                while idx < heap.count {
                    let left = idx * 2
                    let right = left + 1

                    if left >= heap.count {
                        break
                    }

                    if right < heap.count {
                        if heap[idx] > heap[left] && heap[idx] > heap[right] {
                            if heap[left] < heap[right] {
                                heap.swapAt(idx, left)
                                idx = left
                            } else {
                                heap.swapAt(idx, right)
                                idx = right
                            }
                        } else if heap[idx] > heap[left] {
                            heap.swapAt(idx, left)
                            idx = left
                        } else if heap[idx] > heap[right] {
                            heap.swapAt(idx, right)
                            idx = right
                        } else {
                            break
                        }
                    } else {
                        if heap[idx] > heap[left] {
                            heap.swapAt(idx, left)
                            idx = left
                        } else {
                            break
                        }
                    }
                }

                return result
            }
        }
    }
}
