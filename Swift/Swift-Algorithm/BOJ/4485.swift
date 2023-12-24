//
//  4485.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/24/23.
//

//  문제 링크: https://www.acmicpc.net/problem/4485
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로

class BOJ4485: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69400KB, 시간: 424ms, 코드 길이: 941B
    private func solution1() {
        var seq = 1

        while let input = readLine(), input != "0" {
            let N = Int(input)!
            var map = Array(repeating: Array(repeating: 0, count: N), count: N)
            var costs = Array(repeating: Array(repeating: Int.max, count: N), count: N)
            var visited = Array(repeating: Array(repeating: false, count: N), count: N)

            for idx in 0..<N {
                map[idx] = readLine()!.split(separator: " ").map { Int($0)! }
            }

            var queue = [(0, 0, map[0][0])]

            while !queue.isEmpty {
                let (x, y, rupee) = queue.removeLast()
                visited[x][y] = true
                costs[x][y] = min(costs[x][y], rupee)

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<N ~= $0.0 && 0..<N ~= $0.1 && !visited[$0.0][$0.1] {
                        queue.append(($0.0, $0.1, costs[x][y] + map[$0.0][$0.1]))
                    }
                }

                queue.sort(by: { $0.2 > $1.2 })
            }

            print("Problem \(seq): \(costs[N-1][N-1])")
            seq += 1
        }
    }

    // 메모리: 69388KB, 시간: 20ms, 코드 길이: 2892B
    private func solution2() {
        var seq = 1

        while let input = readLine(), input != "0" {
            let N = Int(input)!
            var map = Array(repeating: Array(repeating: 0, count: N), count: N)
            var costs = Array(repeating: Array(repeating: Int.max, count: N), count: N)

            for idx in 0..<N {
                map[idx] = readLine()!.split(separator: " ").map { Int($0)! }
            }

            costs[0][0] = map[0][0]

            var heap = Heap<Cost>()
            heap.insert(Cost(x: 0, y: 0, rupee: map[0][0]))

            while !heap.isEmpty {
                let current = heap.pop()!
                let (x, y, rupee) = (current.x, current.y, current.rupee)

                if costs[x][y] < rupee {
                    continue
                }

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<N ~= $0.0 && 0..<N ~= $0.1 {
                        let temp = rupee + map[$0.0][$0.1]

                        if temp < costs[$0.0][$0.1] {
                            costs[$0.0][$0.1] = temp
                            heap.insert(Cost(x: $0.0, y: $0.1, rupee: temp))
                        }
                    }
                }
            }

            print("Problem \(seq): \(costs[N-1][N-1])")
            seq += 1
        }

        struct Cost: Comparable {
            var (x, y): (Int, Int)
            var rupee: Int

            static func < (lhs: Cost, rhs: Cost) -> Bool {
                lhs.rupee < rhs.rupee
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
                let removed = heap.removeLast()
                var idx = 1

                while idx < heap.count {
                    let left = idx * 2
                    let right = left + 1

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
                    } else if left < heap.count && heap[idx] > heap[left] {
                        heap.swapAt(idx, left)
                        idx = left
                    } else {
                        break
                    }
                }

                return removed
            }
        }
    }
}
