//
//  PGM72413.swift
//  Programmers
//
//  Created by 김이안 on 5/6/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/72413
//  문제 분류: 2021 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM72413: Solvable {
    public init() {}

    public func run() {
        print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]) == 82)
        print(solution(7, 3, 4, 1, [[5, 7, 9], [4, 6, 4], [3, 6, 1], [3, 2, 3], [2, 1, 6]]) == 14)
        print(solution(6, 4, 5, 6, [[2,6,6], [6,3,7], [4,6,7], [6,5,11], [2,5,12], [5,3,20], [2,4,8], [4,3,9]]) == 18)
    }

    func solution(_ n: Int, _ s: Int, _ a: Int, _ b: Int, _ fares: [[Int]]) -> Int {
        let INF = 4000000001
        var costs = Array(repeating: Array(repeating: INF, count: n+1), count: n+1)

        for spot in 1...n {
            costs[spot][spot] = 0
        }

        for fare in fares {
            costs[fare[0]][fare[1]] = fare[2]
            costs[fare[1]][fare[0]] = fare[2]
        }

        var heap = Heap<Cost>(compare: <)
        var minACost = Array(repeating: INF, count: n+1)
        var minBCost = Array(repeating: INF, count: n+1)
        var minSCost = Array(repeating: INF, count: n+1)
        minACost[a] = 0
        minBCost[b] = 0
        minSCost[s] = 0
        heap.push(Cost(start: a, end: a, cost: costs[a][a]))

        while !heap.isEmpty {
            let now = heap.pop()!

            if now.cost > minACost[now.end] { continue }

            for col in 1...n where costs[now.end][col] != INF && minACost[col] > costs[now.end][col] + now.cost {
                heap.push(Cost(start: now.end, end: col, cost: now.cost + costs[now.end][col]))
                minACost[col] = now.cost + costs[now.end][col]
            }
        }

        heap.push(Cost(start: b, end: b, cost: costs[b][b]))

        while !heap.isEmpty {
            let now = heap.pop()!

            if now.cost > minBCost[now.end] { continue }

            for col in 1...n where costs[now.end][col] != INF && minBCost[col] > costs[now.end][col] + now.cost {
                heap.push(Cost(start: now.end, end: col, cost: now.cost + costs[now.end][col]))
                minBCost[col] = now.cost + costs[now.end][col]
            }
        }

        heap.push(Cost(start: s, end: s, cost: costs[s][s]))

        while !heap.isEmpty {
            let now = heap.pop()!

            if now.cost > minSCost[now.end] { continue }

            for col in 1...n where costs[now.end][col] != INF && minSCost[col] > costs[now.end][col] + now.cost {
                heap.push(Cost(start: now.end, end: col, cost: now.cost + costs[now.end][col]))
                minSCost[col] = now.cost + costs[now.end][col]
            }
        }

        var minCost = Int.max

        for idx in 1...n {
            minCost = min(minCost, minACost[idx] + minBCost[idx] + minSCost[idx])
        }

        return minCost
    }

    struct Cost: Comparable {
        let start: Int
        let end: Int
        let cost: Int

        static func < (lhs: Cost, rhs: Cost) -> Bool {
            return lhs.cost < rhs.cost
        }
    }

    struct Heap<T: Comparable> {
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
                if compare(heap[(idx-1)/2], heap[idx]) { break }

                heap.swapAt(idx, (idx-1)/2)
                idx = (idx-1)/2
            }
        }

        mutating func pop() -> T? {
            heap.swapAt(0, heap.count - 1)
            let res = heap.removeLast()
            var idx = 0

            while idx * 2 + 1 < heap.count {
                var next = idx * 2 + 1

                if next + 1 < heap.count && compare(heap[next+1], heap[next]) { next += 1 }
                if compare(heap[idx], heap[next]) { break }

                heap.swapAt(idx, next)
                idx = next
            }

            return res
        }
    }
}
