//
//  1976.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1976
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 분리 집합

class BOJ1976: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 48ms, 코드 길이: 618B
    private func solution1() {
        let N = Int(readLine()!)!
        let M = Int(readLine()!)!
        var path = Array(repeating: Array(repeating: false, count: N), count: N)
        var result = "YES"

        for idx in 0..<N {
            path[idx] = readLine()!.split(separator: " ").map { Int($0)! == 1 ? true : false }
            path[idx][idx] = true
        }

        for mid in 0..<N {
            for row in 0..<N {
                for col in 0..<N where !path[row][col] {
                    path[row][col] = path[row][mid] && path[mid][col]
                }
            }
        }

        let plan = readLine()!.split(separator: " ").map { Int($0)! - 1 }

        for idx in 1..<M where !path[plan[idx-1]][plan[idx]] {
            result = "NO"
            break
        }

        print(result)
    }

    // 메모리: 69108KB, 시간: 16ms, 코드 길이: 714B
    private func solution2() {
        let N = Int(readLine()!)!
        let M = Int(readLine()!)!
        var path = Array(0..<N)
        var result = "YES"

        for start in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for end in 0..<N where input[end] == 1 {
                union(start, end)
            }
        }

        let plan = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        let start = find(plan[0])

        for idx in 0..<M where start != find(plan[idx]) {
            result = "NO"
            break
        }

        print(result)

        func find(_ city: Int) -> Int {
            if city != path[city] {
                path[city] = find(path[city])
            }

            return path[city]
        }

        func union(_ start: Int, _ end: Int) {
            let startRoot = find(start)
            let endRoot = find(end)
            path[endRoot] = startRoot
        }
    }
}
