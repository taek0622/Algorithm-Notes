//
//  11279.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/14/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11279
//  알고리즘 분류: 자료 구조, 우선순위 큐

class BOJ11279: Solvable {
    func run() {
        // 메모리: 70672KB, 시간: 116ms, 코드 길이: 1849B
        var heap = Heap<Int>()
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let x = Int(readLine()!)!

            if x == 0 {
                print(heap.pop() ?? 0)
            } else {
                heap.insert(x)
            }
        }

        struct Heap<T: Comparable> {
            private var heap = [T]()

            mutating func insert(_ data: T) {
                if heap.isEmpty {
                    heap.append(data)
                    heap.append(data)
                    return
                }

                var idx = heap.count
                heap.append(data)

                while idx > 1 && heap[idx] > heap[idx/2] {
                    heap.swapAt(idx, idx/2)
                    idx = idx/2
                }
            }

            mutating func pop() -> T? {
                if heap.count < 2 {
                    return nil
                }

                heap.swapAt(1, heap.count-1)
                var idx = 1
                let result = heap.removeLast()

                while idx < heap.count {
                    let left = idx * 2
                    let right = left + 1

                    if left >= heap.count {
                        break
                    }

                    if right >= heap.count {
                        if heap[idx] < heap[left] {
                            heap.swapAt(idx, left)
                            idx = left
                            continue
                        } else {
                            break
                        }
                    }

                    if heap[idx] < heap[left] && heap[idx] < heap[right] {
                        if heap[left] > heap[right] {
                            heap.swapAt(idx, left)
                            idx = left
                        } else {
                            heap.swapAt(idx, right)
                            idx = right
                        }
                    } else if heap[idx] < heap[left] {
                        heap.swapAt(idx, left)
                        idx = left
                    } else if heap[idx] < heap[right] {
                        heap.swapAt(idx, right)
                        idx = right
                    } else {
                        break
                    }
                }

                return result
            }
        }
    }
}
