//
//  PGM42627.swift
//  Programmers
//
//  Created by 김이안 on 4/30/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/42627
//  문제 분류: 힙(Heap)

import Foundation

import Shared

public struct PGM42627: Solvable {
    public init() {}

    public func run() {
        print(solution([[0, 3], [1, 9], [3, 5]]) == 8)
    }

    func solution(_ jobs: [[Int]]) -> Int {
        let jobs = jobs.sorted(by: { $0[0] < $1[0] })
        var heap = Heap<Task>(compare: <)
        var idx = 0
        var time = jobs[0][0]
        var totalTime = 0

        while !heap.isEmpty || idx < jobs.count {
            while idx < jobs.count && jobs[idx][0] <= time {
                heap.push(Task(number: idx, requestTime: jobs[idx][0], processingTime: jobs[idx][1]))
                idx += 1
            }

            if heap.isEmpty {
                time = jobs[idx][0]
                continue
            }

            let completeTask = heap.pop()!
            time += completeTask.processingTime
            totalTime += (time - completeTask.requestTime)
        }

        return totalTime / jobs.count
    }

    struct Task: Comparable {
        let number: Int
        let requestTime: Int
        let processingTime: Int

        static func < (lhs: Task, rhs: Task) -> Bool {
            if lhs.processingTime != rhs.processingTime { return lhs.processingTime < rhs.processingTime }
            if lhs.requestTime != rhs.requestTime { return lhs.requestTime < rhs.requestTime }
            return lhs.number < rhs.number
        }
    }

    struct Heap<T> {
        private var heap = [T]()
        private var compare: (T, T) -> Bool
        var isEmpty: Bool {
            return heap.isEmpty
        }

        init(compare: @escaping (T, T) -> Bool) {
            self.compare = compare
        }

        mutating func push(_ element: T) {
            var idx = heap.count
            heap.append(element)

            while idx > 0 {
                if compare(heap[(idx-1)/2], heap[idx]) {
                    break
                }

                heap.swapAt(idx, (idx-1)/2)
                idx = (idx-1)/2
            }
        }

        mutating func pop() -> T? {
            if isEmpty { return nil }

            heap.swapAt(0, heap.count - 1)
            let res = heap.removeLast()
            var idx = 0

            while idx*2+1 < heap.count {
                var next = idx*2+1

                if next+1 < heap.count && compare(heap[next+1], heap[next]) { next += 1 }
                if compare(heap[idx], heap[next]) { break }

                heap.swapAt(idx, next)
                idx = next
            }

            return res
        }
    }
}
