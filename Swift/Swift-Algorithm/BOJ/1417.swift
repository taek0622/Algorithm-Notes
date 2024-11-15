//
//  1417.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1417
//  알고리즘 분류: 구현, 자료 구조, 그리디 알고리즘, 시뮬레이션, 우선순위 큐

class BOJ1417: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 2001B
        let N = Int(readLine()!)!
        let dasom = Int(readLine()!)!
        var people = 0
        var heap = Heap<Int>()

        for _ in 1..<N {
            heap.push(Int(readLine()!)!)
        }

        while !heap.isEmpty {
            let maxNumber = heap.pop()!

            if maxNumber >= dasom + people {
                people += 1
                heap.push(maxNumber - 1)
            } else {
                break
            }
        }

        print(people)

        struct Heap<T: Comparable> {
            private var heap = [T]()
            var isEmpty: Bool {
                heap.count <= 1
            }

            mutating func push(_ node: T) {
                if heap.isEmpty {
                    heap.append(node)
                    heap.append(node)
                    return
                }

                var idx = heap.count
                heap.append(node)

                while idx > 1 && heap[idx] > heap[idx/2] {
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
                        if heap[idx] < heap[left] && heap[idx] < heap[right] {
                            if heap[left] < heap[right] {
                                heap.swapAt(idx, right)
                                idx = right
                            } else {
                                heap.swapAt(idx, left)
                                idx = left
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
                    } else if left < heap.count && heap[idx] < heap[left] {
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
