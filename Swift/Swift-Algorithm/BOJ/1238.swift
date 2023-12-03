//
//  1238.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/3/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1238
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로

class BOJ1238: Solvable {
    func run() {
        // 메모리: 84748KB, 시간: 28ms, 코드 길이: 2983B
        let NMX = readLine()!.split(separator: " ").map { Int(String($0))! }
        var goPath = Array(repeating: Array(repeating: 100001, count: NMX[0]), count: NMX[0])
        var comePath = Array(repeating: Array(repeating: 100001, count: NMX[0]), count: NMX[0])

        for _ in 0..<NMX[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            goPath[input[1] - 1][input[0] - 1] = input[2]
            comePath[input[0] - 1][input[1] - 1] = input[2]
        }

        var goDp = dijkstra(goPath)
        let comeDp = dijkstra(comePath)

        for idx in 0..<NMX[0] {
            goDp[idx] += comeDp[idx]
        }

        print(goDp.max()!)

        func dijkstra(_ path: [[Int]]) -> [Int] {
            var dp = Array(repeating: 100001, count: NMX[0])
            var heap = Heap<Path>()
            heap.push(Path(city: NMX[2]-1, time: 0))

            while !heap.isEmpty {
                let current = heap.pop()!

                if dp[current.city] < current.time {
                    continue
                }

                for idx in 0..<NMX[0] where current.time + path[current.city][idx] < dp[idx] {
                    dp[idx] = current.time + path[current.city][idx]
                    heap.push(Path(city: idx, time: current.time + path[current.city][idx]))
                }
            }

            dp[NMX[2]-1] = 0

            return dp
        }

        struct Path: Comparable {
            var city: Int
            var time: Int

            static func < (lhs: Path, rhs: Path) -> Bool {
                lhs.time < rhs.time
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var isEmpty: Bool {
                heap.count < 2
            }

            mutating func push(_ data: T) {
                if isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var idx = heap.count
                heap.append(data)

                while idx > 1 && heap[idx] < heap[idx / 2] {
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
                    } else if left < heap.count && heap[idx] > heap[left] {
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
