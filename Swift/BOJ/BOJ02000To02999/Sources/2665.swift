//
//  2665.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2665
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 데이크스트라, 최단 경로, 0-1 너비 우선 탐색

import Shared

public struct BOJ2665: Solvable {
    public init() {}

    public func run() {
        // 메모리: 691112KB, 시간: 12ms, 코드 길이: 2860B
        var heap = Heap<Room>(compare: <)
        let n = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: false, count: n), count: n)
        var visited = Array(repeating: Array(repeating: false, count: n), count: n)

        for idx in 0..<n {
            map[idx] = Array(readLine()!).map { $0 == "1" }
        }

        heap.push(Room(count: 0, y: 0, x: 0))
        visited[0][0] = true

        while !heap.isEmpty {
            let now = heap.pop()!
            let (count, y, x) = (now.count, now.y, now.x)

            if y == n - 1 && x == n - 1 {
                print(count)
                break
            }

            [(y-1, x), (y, x-1), (y, x+1), (y+1, x)].forEach {
                if 0..<n ~= $0.0 && 0..<n ~= $0.1 && !visited[$0.0][$0.1] {
                    visited[$0.0][$0.1] = true
                    heap.push(Room(count: map[$0.0][$0.1] ? count : count+1, y: $0.0, x: $0.1))
                }
            }
        }

        struct Room: Comparable {
            var count: Int
            var y: Int
            var x: Int

            static func < (lhs: Room, rhs: Room) -> Bool {
                lhs.count < rhs.count
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var compare: (T, T) -> Bool
            var isEmpty: Bool {
                heap.count < 2
            }

            init(compare: @escaping (T, T) -> Bool) {
                self.compare = compare
            }

            mutating func push(_ data: T) {
                if heap.isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var idx = heap.count
                heap.append(data)

                while idx > 1 {
                    if compare(heap[idx], heap[idx/2]) {
                        heap.swapAt(idx, idx/2)
                        idx /= 2
                    } else {
                        break
                    }
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
                        if compare(heap[left], heap[idx]) && compare(heap[right], heap[idx]) {
                            if compare(heap[left], heap[right]) {
                                heap.swapAt(idx, left)
                                idx = left
                            } else {
                                heap.swapAt(idx, right)
                                idx = right
                            }
                        } else if compare(heap[left], heap[idx]) {
                            heap.swapAt(idx, left)
                            idx = left
                        } else if compare(heap[right], heap[idx]) {
                            heap.swapAt(idx, right)
                            idx = right
                        } else {
                            break
                        }
                    } else if left < heap.count && compare(heap[left], heap[idx]) {
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
