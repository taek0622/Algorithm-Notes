//
//  1504.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/9/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1504
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로

class BOJ1504: Solvable {
    func run() {
        // 메모리: 74300KB, 시간: 256ms, 코드 길이: 2945B
        let NE = readLine()!.split(separator: " ").map { Int(String($0))! }
        var graph = Array(repeating: Array(repeating: 200000001, count: NE[0]), count: NE[0])

        for _ in 0..<NE[1] {
            let abc = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[abc[0]-1][abc[1]-1] = abc[2]
            graph[abc[1]-1][abc[0]-1] = abc[2]
        }

        let dest = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
        let result = min(dijkstra(0, dest[0]) + dijkstra(dest[0], dest[1]) + dijkstra(dest[1], NE[0] - 1), dijkstra(0, dest[1]) + dijkstra(dest[1], dest[0]) + dijkstra(dest[0], NE[0] - 1))
        print(result > 200000000 ? -1 : result)

        func dijkstra(_ start: Int, _ end: Int) -> Int {
            var heap = Heap<Edge>()
            heap.push(Edge(node: start, length: 0))
            var dp = Array(repeating: 200000001, count: NE[0])

            while !heap.isEmpty {
                let current = heap.pop()!

                if dp[current.node] < current.length {
                    continue
                }

                for idx in 0..<NE[0] where current.length + graph[current.node][idx] < dp[idx] {
                    dp[idx] = current.length + graph[current.node][idx]
                    heap.push(Edge(node: idx, length: dp[idx]))
                }
            }

            dp[start] = 0

            return dp[end]
        }

        struct Edge: Comparable {
            var node: Int
            var length: Int

            static func < (lhs: Edge, rhs: Edge) -> Bool {
                lhs.length < rhs.length
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
                        } else {
                            heap.swapAt(idx, right)
                            idx = right
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
