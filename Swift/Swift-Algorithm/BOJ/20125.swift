//
//  20125.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20125
//  알고리즘 분류: 구현

class BOJ20125: Solvable {
    func run() {
        // 메모리: 70028KB, 시간: 64ms, 코드 길이: 780B
        let N = Int(readLine()!)!
        var cookie = Array(repeating: Array(repeating: false, count: N), count: N)
        var heart = (N, N)
        var length = (0, 0, 0, 0, 0)

        for row in 0..<N {
            cookie[row] = readLine()!.map { $0 == "*" }
        }

        outer: for row in 0..<N {
            for col in 0..<N where cookie[row][col] {
                heart = (row+1, col)
                break outer
            }
        }

        length.0 = cookie[heart.0][..<heart.1].filter { $0 }.count
        length.1 = cookie[heart.0][(heart.1+1)...].filter { $0 }.count

        for row in (heart.0+1)..<N {
            if cookie[row][heart.1] {
                length.2 += 1
            }

            if cookie[row][heart.1-1] {
                length.3 += 1
            }

            if cookie[row][heart.1+1] {
                length.4 += 1
            }
        }

        print("\(heart.0+1) \(heart.1+1)\n\(length.0) \(length.1) \(length.2) \(length.3) \(length.4)")
    }
}
