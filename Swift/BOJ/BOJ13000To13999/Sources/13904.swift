//
//  13904.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13904
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 정렬, 우선순위 큐

import Shared

public struct BOJ13904: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69112KB, 시간: 12ms, 코드 길이: 2015B
    private func solution1() {
        let N = Int(readLine()!)!
        var assignments = [Int: [Int]]()
        var heap = Heap<Int>()
        var score = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            assignments[input[0], default: []].append(input[1])
        }

        for day in stride(from: 1000, to: 0, by: -1) {
            assignments[day, default: []].forEach {
                heap.push($0)
            }

            score += heap.pop() ?? 0
        }

        print(score)

        struct Heap<T:Comparable> {
            private var heap = [T]()

            mutating func push(_ data: T) {
                if heap.isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var idx = heap.count
                heap.append(data)

                while idx > 1 && heap[idx] > heap[idx/2] {
                    heap.swapAt(idx, idx/2)
                    idx /= 2
                }
            }

            mutating func pop() -> T? {
                if heap.count < 2 {
                    return nil
                }

                heap.swapAt(1, heap.count - 1)
                let result = heap.removeLast()
                var idx = 1

                while idx < heap.count {
                    let left = idx * 2
                    let right = left + 1

                    if right < heap.count {
                        if heap[left] > heap[idx] && heap[right] > heap[idx] {
                            if heap[left] > heap[right] {
                                heap.swapAt(idx, left)
                                idx = left
                            } else {
                                heap.swapAt(idx, right)
                                idx = right
                            }
                        } else if heap[left] > heap[idx] {
                            heap.swapAt(idx, left)
                            idx = left
                        } else if heap[right] > heap[idx] {
                            heap.swapAt(idx, right)
                            idx = right
                        } else {
                            break
                        }
                    } else if left < heap.count && heap[left] > heap[idx] {
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

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 559B
    private func solution2() {
        let N = Int(readLine()!)!
        var assignments = Array(repeating: (0, 0), count: N)
        var score = 0

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            assignments[idx] = (input[0], input[1])
        }

        assignments.sort { $0.1 > $1.1 }

        var past = Array(repeating: 0, count: 1001)
        var idx = 0

        while idx < assignments.count {
            for day in stride(from: assignments[idx].0, to: 0, by: -1) where past[day] == 0 {
                past[day] = assignments[idx].1
                score += past[day]
                break
            }

            idx += 1
        }

        print(score)
    }
}
