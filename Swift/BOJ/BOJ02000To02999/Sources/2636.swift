//
//  2636.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2636
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 시뮬레이션, 너비 우선 탐색

class BOJ2636: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 1053B
        let hw = readLine()!.split(separator: " ").map { Int($0)! }
        var board = Array(repeating: Array(repeating: 0, count: hw[1]), count: hw[0])
        var cheeseCount = [Int]()
        var time = 0
        var count = 1

        for idx in 0..<hw[0] {
            board[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        while count != 0 {
            time += 1

            var visited = Array(repeating: Array(repeating: false, count: hw[1]), count: hw[0])
            var queue = [(0, 0)]
            visited[0][0] = true
            count = 0

            while !queue.isEmpty {
                let (y, x) = queue.removeFirst()

                [(y-1, x), (y, x-1), (y, x+1), (y+1, x)].forEach {
                    if 0..<hw[0] ~= $0.0 && 0..<hw[1] ~= $0.1 && !visited[$0.0][$0.1] {
                        visited[$0.0][$0.1] = true
                        if board[$0.0][$0.1] == 0 {
                            queue.append($0)
                        } else if board[$0.0][$0.1] == 1 {
                            board[$0.0][$0.1] = 0
                            count += 1
                        }
                    }
                }
            }

            cheeseCount.append(count)
        }

        print("\(time-1)\n\(cheeseCount[time-2])")
    }
}
