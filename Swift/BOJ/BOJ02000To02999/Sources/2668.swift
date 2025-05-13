//
//  2668.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2668
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2668: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 785B
    private func solution1() {
        let N = Int(readLine()!)!
        var numbers = Array(repeating: 0, count: N+1)
        var visited = Array(repeating: false, count: N+1)
        var tempVisited = visited
        var max = [Int]()

        for idx in 1...N {
            numbers[idx] = Int(readLine()!)!
        }

        for num in 1...N {
            tempVisited = visited
            tempVisited[num] = true
            let count = countCycle(num, numbers[num], 1)

            if count > 0 {
                visited = tempVisited
            }
        }

        for num in 1...N where visited[num] {
            max.append(num)
        }

        print(max.count)
        max.forEach {
            print($0)
        }

        func countCycle(_ start: Int, _ current: Int, _ count: Int) -> Int {
            if current == start {
                return count
            }

            if tempVisited[current] {
                return 0
            }

            tempVisited[current] = true

            return countCycle(start, numbers[current], count + 1)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 439B
    private func solution2() {
        let N = Int(readLine()!)!
        var numbers = Array(repeating: 0, count: N+1)
        var max = [Int]()

        for idx in 1...N {
            numbers[idx] = Int(readLine()!)!
        }

        for current in 1...N {
            var count = 0
            var next = numbers[current]

            while count < N {
                if current == next {
                    max.append(current)
                    break
                }

                next = numbers[next]
                count += 1
            }
        }

        print(max.count)
        max.forEach {
            print($0)
        }
    }
}
