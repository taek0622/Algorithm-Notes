//
//  7662.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/7662
//  알고리즘 분류: 자료 구조, 트리를 사용한 집합과 맵, 우선순위 큐

import Foundation

class BOJ7662: Solvable {
    func run() {
        // 메모리: 157536KB, 시간: 5300ms, 코드 길이: 3218B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var maxHeap = Heap<Int>(compare: >)
            var minHeap = Heap<Int>(compare: <)
            var count = [Int: Int]()
            let k = Int(readLine()!)!

            for _ in 0..<k {
                let input = readLine()!.split(separator: " ").map { String($0) }
                let number = Int(input[1])!

                if input[0] == "I" {
                    maxHeap.push(number)
                    minHeap.push(number)
                    count[number, default: 0] += 1
                } else if number == 1 {
                    while !maxHeap.isEmpty {
                        let poppedNumber = maxHeap.pop()!

                        if count[poppedNumber, default: 0] > 0 {
                            count[poppedNumber]! -= 1

                            if count[poppedNumber]! == 0 {
                                count[poppedNumber] = nil
                            }

                            break
                        }
                    }
                } else {
                    while !minHeap.isEmpty {
                        let poppedNumber = minHeap.pop()!

                        if count[poppedNumber, default: 0] > 0 {
                            count[poppedNumber]! -= 1

                            if count[poppedNumber]! == 0 {
                                count[poppedNumber] = nil
                            }

                            break
                        }
                    }
                }
            }

            print(count.keys.count == 0 ? "EMPTY" : "\(count.keys.max()!) \(count.keys.min()!)")
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()
            private var compare: (T, T) -> Bool
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

                heap.append(data)
                var idx = heap.count - 1

                while idx > 1 && compare(heap[idx], heap[idx/2]) {
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
