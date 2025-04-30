//
//  12852.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/30/23.
//

//  문제 링크: https://www.acmicpc.net/problem/12852
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색

class BOJ12852: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 76916KB, 시간: 500ms, 코드 길이: 521B
    private func solution1() {
        let N = Int(readLine()!)!
        var minNums = Array(repeating: 0, count: 1000000)

        becomeOne(N, [])

        print(minNums.count - 1)
        print(minNums.map { String($0) }.joined(separator: " "))

        func becomeOne(_ N: Int, _ numbers: [Int]) {
            if minNums.count <= numbers.count {
                return
            }

            if N == 1 {
                minNums = numbers
                return
            }

            if N % 3 == 0 {
                becomeOne(N/3, numbers + [N/3])
            }

            if N % 2 == 0 {
                becomeOne(N/2, numbers + [N/2])
            }

            becomeOne(N-1, numbers + [N-1])
        }
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 1062B
    private func solution2() {
        let N = Int(readLine()!)!
        var visited = [Int: Bool]()
        var queue = Queue<(Int, Int, String)>()
        queue.push((N, 0, "\(N)"))

        while !queue.isEmpty {
            let (N, count, method) = queue.pop()!

            if N == 1 {
                print("\(count)\n\(method)")
                break
            }

            if N % 3 == 0 && visited[N/3] == nil {
                visited[N/3] = true
                queue.push((N/3, count+1, method + " \(N/3)"))
            }

            if N % 2 == 0 && visited[N/2] == nil {
                visited[N/2] = true
                queue.push((N/2, count+1, method + " \(N/2)"))
            }

            if visited[N-1] == nil {
                visited[N-1] = true
                queue.push((N-1, count+1, method + " \(N-1)"))
            }
        }

        struct Queue<T> {
            private var enqueue = [T]()
            private var dequeue = [T]()
            var isEmpty: Bool {
                enqueue.isEmpty && dequeue.isEmpty
            }

            mutating func push(_ data: T) {
                enqueue.append(data)
            }

            mutating func pop() -> T? {
                if dequeue.isEmpty {
                    dequeue = enqueue.reversed()
                    enqueue.removeAll()
                }

                return dequeue.popLast()
            }
        }
    }

    // 메모리: 69260B, 시간: 8ms, 코드 길이: 641B
    private func solution3() {
        let N = Int(readLine()!)!
        var visited = [Int: Bool]()
        var queue = [(N, 0, "\(N)")]
        var idx = 0

        while idx < queue.count {
            let (N, count, method) = queue[idx]
            idx += 1

            if N == 1 {
                print("\(count)\n\(method)")
                break
            }

            if N % 3 == 0 && visited[N/3] == nil {
                visited[N/3] = true
                queue.append((N/3, count+1, method + " \(N/3)"))
            }

            if N % 2 == 0 && visited[N/2] == nil {
                visited[N/2] = true
                queue.append((N/2, count+1, method + " \(N/2)"))
            }

            if visited[N-1] == nil {
                visited[N-1] = true
                queue.append((N-1, count+1, method + " \(N-1)"))
            }
        }
    }
}
