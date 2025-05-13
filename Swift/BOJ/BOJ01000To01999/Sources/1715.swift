//
//  1715.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/27/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1715
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 우선순위 큐

import Shared

public struct BOJ1715: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70672KB, 시간: 76ms, 코드 길이: 1966B
        var heap = Heap<Int>()
        var result = 0

        for _ in 0..<Int(readLine()!)! {
            heap.push(Int(readLine()!)!)
        }

        while heap.count > 1 {
            let A = heap.pop()!
            let B = heap.pop()!

            heap.push(A+B)
            result += (A+B)
        }

        print(result)

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var count: Int {
                heap.isEmpty ? 0 : heap.count - 1
            }
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

                while idx > 1 && heap[idx] < heap[idx / 2] {
                    heap.swapAt(idx, idx / 2)
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
                        } else if heap[right] < heap[idx] {
                            heap.swapAt(idx, right)
                            idx = right
                        } else if heap[left] < heap[idx] {
                            heap.swapAt(idx, left)
                            idx = left
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
