//
//  18258.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/25.
//

// 문제: https://www.acmicpc.net/problem/18258

class BOJ18258: Solvable {
    func run() {
        struct Queue {
            private var queue = [Int]()
            private var head = 0

            public var count: Int {
                return queue.count
            }

            public var isEmpty: Int {
                return queue.isEmpty ? 1 : 0
            }

            public var first: Int {
                return queue.count <= head ? -1 : queue[head]
            }

            public var last: Int {
                return queue.last ?? -1
            }

            public mutating func enqueue(_ newElement: Int) {
                queue.append(newElement)
            }

            public mutating func dequeue() -> Int? {
                let value = queue.count <= head ? -1 : queue[head]
                head += 1

                return value
            }
        }

        let N = Int(readLine()!)!
        var queue = Queue()

        for _ in 0..<N {
            let command = readLine()!.split(separator: " ").map { String($0) }

            switch command[0] {
            case "push":
                queue.enqueue(Int(command[1])!)
            case "pop":
                print(queue.dequeue())
            case "size":
                print(queue.count)
            case "empty":
                print(queue.isEmpty)
            case "front":
                print(queue.first)
            case "back":
                print(queue.last)
            default:
                break
            }
        }
    }
}
