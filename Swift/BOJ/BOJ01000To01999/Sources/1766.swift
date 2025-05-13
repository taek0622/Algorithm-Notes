//
//  1766.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1766
//  알고리즘 분류: 자료 구조, 그래프 이론, 우선순위 큐, 위상 정렬, 방향 비순환 그래프

import Shared

public struct BOJ1766: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 72444KB, 시간: 808ms, 코드 길이: 686B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NM[0] + 1)
        var enters = Array(repeating: 0, count: NM[0] + 1)
        var queue = [Int]()
        var result = ""

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            graph[AB[0]].append(AB[1])
            enters[AB[1]] += 1
        }

        for num in 1...NM[0] where enters[num] == 0 {
            queue.append(num)
        }

        while !queue.isEmpty {
            let current = queue.removeFirst()
            result += "\(current) "

            for next in graph[current] {
                enters[next] -= 1

                if enters[next] == 0 {
                    queue.append(next)
                    queue.sort()
                }
            }
        }

        print(result)
    }

    // 메모리: 72444KB, 시간: 160ms, 코드 길이: 2310B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NM[0] + 1)
        var enters = Array(repeating: 0, count: NM[0] + 1)
        var queue = Heap<Int>()
        var result = ""

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            graph[AB[0]].append(AB[1])
            enters[AB[1]] += 1
        }

        for num in 1...NM[0] where enters[num] == 0 {
            queue.push(num)
        }

        while !queue.isEmpty {
            let current = queue.pop()!
            result += "\(current) "

            for next in graph[current] {
                enters[next] -= 1

                if enters[next] == 0 {
                    queue.push(next)
                }
            }
        }

        print(result)

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

                heap.swapAt(1, heap.count-1)
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
