//
//  11286.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/2/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11286
//  알고리즘 분류: 자료 구조, 우선순위 큐

class BOJ11286: Solvable {
    func run() {
        // 메모리: 69896KB, 시간: 92ms, 코드 길이: 1979B
        let N = Int(readLine()!)!
        var heap = [Int]()

        for _ in 0..<N {
            let x = Int(readLine()!)!

            switch x {
            case 0:
                print(pop())
            default:
                push(x)
            }
        }

        func push(_ data: Int) {
            if heap.isEmpty {
                heap.append(data)
                heap.append(data)
                return
            }

            var idx = heap.count
            heap.append(data)

            while (abs(data) < abs(heap[idx/2]) || (abs(data) == abs(heap[idx/2]) && data < heap[idx/2])) && idx > 1 {
                heap.swapAt(idx, idx/2)
                idx = idx / 2
            }
        }

        func pop() -> Int {
            if heap.count < 2 {
                return 0
            }

            heap.swapAt(1, heap.count - 1)
            let result = heap.removeLast()
            var idx = 1

            while idx * 2 < heap.count {
                let next = idx * 2

                if next + 1 < heap.count {
                    if (abs(heap[next + 1]) < abs(heap[next]) || (abs(heap[next + 1]) == abs(heap[next]) && heap[next + 1] < heap[next])) && (abs(heap[next + 1]) < abs(heap[idx]) || (abs(heap[next + 1]) == abs(heap[idx]) && heap[next + 1] < heap[idx])) {
                        heap.swapAt(idx, next + 1)
                        idx = next + 1
                    } else if (abs(heap[next + 1]) > abs(heap[next]) || (abs(heap[next + 1]) == abs(heap[next]) && heap[next + 1] > heap[next])) && (abs(heap[next]) < abs(heap[idx]) || (abs(heap[next]) == abs(heap[idx]) && heap[next] < heap[idx])) {
                        heap.swapAt(idx, next)
                        idx = next
                    } else if abs(heap[next + 1]) == abs(heap[next]) && heap[next + 1] == heap[next] && (abs(heap[next]) < abs(heap[idx]) || (abs(heap[next]) == abs(heap[idx]) && heap[next] < heap[idx])) {
                        heap.swapAt(idx, next)
                        idx = next
                    } else {
                        break
                    }
                } else if abs(heap[next]) < abs(heap[idx]) || (abs(heap[next]) == abs(heap[idx]) && heap[next] < heap[idx]) {
                    heap.swapAt(idx, next)
                    idx = next
                } else {
                    break
                }
            }

            return result
        }
    }
}
