//
//  1655.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/17/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1655
//  알고리즘 분류: 자료 구조, 우선순위 큐

class BOJ1655: Solvable {
    func run() {
        // 메모리: 71260KB, 시간: 92ms, 코드 길이: 2406B
        var maxHeap = Heap<Int>(compare: >)
        var minHeap = Heap<Int>(compare: <)
        let N = Int(readLine()!)!
        var result = ""

        for idx in 1...N {
            let input = Int(readLine()!)!
            idx % 2 == 1 ? maxHeap.push(input) : minHeap.push(input)

            if minHeap.root == nil {
                result += "\(maxHeap.root!)\n"
                continue
            }

            var maxRoot = maxHeap.root!
            var minRoot = minHeap.root!

            if maxRoot > minRoot {
                minHeap.heap[1] = maxRoot
                maxHeap.heap[1] = minRoot
            }

            idx % 2 == 1 ? minHeap.shiftDown(1) : maxHeap.shiftDown(1)

            result += "\(maxHeap.root!)\n"
        }

        print(result)

        struct Heap<T: Comparable> {
            var heap = [T]()
            var compare: (T, T) -> Bool
            var isEmpty: Bool {
                heap.count < 2
            }
            var root: T? {
                isEmpty ? nil : heap[1]
            }

            init(compare: @escaping (T, T) -> Bool) {
                self.compare = compare
            }

            mutating func push(_ data: T) {
                if isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                heap.append(data)
                shiftUp(heap.count - 1)
            }

            mutating func shiftUp(_ idx: Int) {
                var idx = idx

                while idx > 1 && compare(heap[idx], heap[idx/2]) {
                    heap.swapAt(idx, idx/2)
                    idx /= 2
                }
            }

            mutating func shiftDown(_ idx: Int) {
                var idx = idx

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
            }
        }
    }
}
