//
//  17265.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17265
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 깊이 우선 탐색

class BOJ17265: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1082B
        let N = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: "", count: N), count: N)
        var (minimum, maximum) = (5000, -5000)

        for idx in 0..<N {
            map[idx] = readLine()!.split(separator: " ").map { String($0) }
        }

        calculate(0, 0, Int(map[0][0])!, "")
        print("\(maximum) \(minimum)")

        func calculate(_ row: Int, _ col: Int, _ base: Int, _ oper: String) {
            for (nr, nc) in [(row, col+1), (row+1, col)] where 0..<N ~= nr && 0..<N ~= nc {
                if map[nr][nc] == "+" || map[nr][nc] == "-" || map[nr][nc] == "*" {
                    calculate(nr, nc, base, map[nr][nc])
                } else {
                    var result = Int(map[nr][nc])!

                    if oper == "+" {
                        result += base
                    } else if oper == "-" {
                        result = base - result
                    } else if oper == "*" {
                        result *= base
                    }

                    if nr == N-1 && nc == N-1 {
                        minimum = min(minimum, result)
                        maximum = max(maximum, result)
                        return
                    }

                    calculate(nr, nc, result, "")
                }
            }
        }
    }
}
