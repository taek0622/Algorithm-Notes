//
//  17472.swift
//  BOJ17000To17999
//
//  Created by 김이안 on 3/27/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17472
//  알고리즘 분류: 구현, 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색, 최소 스패닝 트리

import Shared

public struct BOJ17472: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 3961B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var board = Array(repeating: Array(repeating: -1, count: NM[1]), count: NM[0])
        var islandNum = 0

        for idx in 0..<NM[0] {
            board[idx] = readLine()!.split(separator: " ").map { $0 == "1" ? -2 : -1 }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] where board[row][col] == -2 {
                board[row][col] = islandNum
                var queue = [(row, col)]
                var idx = 0

                while idx < queue.count {
                    let (cr, cc) = queue[idx]
                    idx += 1

                    for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<NM[0] ~= nr && 0..<NM[1] ~= nc && board[nr][nc] == -2 {
                        queue.append((nr, nc))
                        board[nr][nc] = islandNum
                    }
                }

                islandNum += 1
            }
        }

        var connection = Array(repeating: Array(repeating: 101, count: islandNum), count: islandNum)

        for row in 0..<NM[0] {
            for col in 0..<NM[1] where board[row][col] > -1 {
                let islandIdx = board[row][col]

                for dir in [(-1, 0), (0, -1), (0, +1), (+1, 0)] {
                    var (nr, nc, count) = (row+dir.0, col+dir.1, 0)

                    while 0..<NM[0] ~= nr && 0..<NM[1] ~= nc {
                        if board[nr][nc] == -1 {
                            nr += dir.0
                            nc += dir.1
                            count += 1
                            continue
                        } else if board[nr][nc] != islandIdx && count > 1 {
                            let prevValue = connection[islandIdx][board[nr][nc]]
                            connection[islandIdx][board[nr][nc]] = min(count, prevValue)
                            connection[board[nr][nc]][islandIdx] = min(count, prevValue)
                            break
                        }

                        break
                    }
                }
            }
        }

        var heap = Heap()

        for row in 0..<islandNum {
            for col in row..<islandNum where connection[row][col] < 101 {
                heap.push(Node(start: row, end: col, value: connection[row][col]))
            }
        }

        var parents = Array(0..<islandNum)
        var minLength = 0
        var lineCount = 0

        while !heap.isEmpty && lineCount < islandNum - 1 {
            let node = heap.pop()!
            let group1 = find(node.start)
            let group2 = find(node.end)

            if group1 != group2 {
                union(group1, group2)
                minLength += node.value
                lineCount += 1
            }
        }

        print(islandNum - 1 == lineCount ? minLength : -1)

        func union(_ node1: Int, _ node2: Int) {
            if node1 < node2 {
                parents[node2] = node1
                return
            }

            parents[node1] = node2
        }

        func find(_ node: Int) -> Int {
            if parents[node] == node {
                return node
            }

            parents[node] = find(parents[node])
            return parents[node]
        }

        struct Node: Comparable {
            let start: Int
            let end: Int
            let value: Int

            static func < (lhs: Node, rhs: Node) -> Bool {
                return lhs.value < rhs.value
            }
        }

        struct Heap {
            private var heap = [Node]()
            var isEmpty: Bool {
                return heap.count < 2
            }

            mutating func push(_ element: Node) {
                if heap.isEmpty {
                    heap.append(element)
                    heap.append(element)
                    return
                }

                var idx = heap.count
                heap.append(element)

                while idx > 1 {
                    if heap[idx] >= heap[idx/2] {
                        break
                    }

                    heap.swapAt(idx, idx/2)
                    idx /= 2
                }
            }

            mutating func pop() -> Node? {
                if isEmpty {
                    return nil
                }

                var idx = 1
                heap.swapAt(idx, heap.count - 1)
                let node = heap.popLast()

                while idx * 2 < heap.count {
                    let left = idx * 2
                    let right = left + 1
                    var next = left
                    
                    if right < heap.count && heap[left] > heap[right] {
                        next = right
                    }
                    
                    if heap[idx] > heap[next] {
                        heap.swapAt(idx, next)
                        idx = next
                    } else {
                        break
                    }
                }

                return node
            }
        }
    }
}
