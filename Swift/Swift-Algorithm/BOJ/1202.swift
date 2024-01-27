//
//  1202.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1202
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 정렬, 우선순위 큐

class BOJ1202: Solvable {
    func run() {
        // 메모리: 84356KB, 시간: 664ms, 코드 길이: 2286B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var jewels = Array(repeating: (0, 0), count: NK[0])
        var bags = Array(repeating: 0, count: NK[1])
        var price = 0

        for idx in 0..<NK[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            jewels[idx] = (input[0], input[1])
        }

        for idx in 0..<NK[1] {
            bags[idx] = Int(readLine()!)!
        }

        jewels.sort(by: <)
        bags.sort()

        var heap = Heap<Int>()
        var idx = 0

        for bag in bags {
            while idx < NK[0] && jewels[idx].0 <= bag {
                heap.push(jewels[idx].1)
                idx += 1
            }

            if !heap.isEmpty {
                price += heap.pop()!
            }
        }

        print(price)

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
}
