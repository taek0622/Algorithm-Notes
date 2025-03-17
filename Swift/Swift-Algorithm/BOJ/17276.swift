//
//  17276.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17276
//  알고리즘 분류: 구현

class BOJ17276: Solvable {
    func run() {
        // 메모리: 76856KB, 시간: 652ms, 코드 길이: 777B
        let T = Int(readLine()!)!

        for _  in 0..<T {
            let nd = readLine()!.split(separator: " ").map { Int($0)! }
            let d = (nd[1] < 0 ? 360 + nd[1] : nd[1]) / 45
            var X = Array(repeating: Array(repeating: "", count: nd[0]), count: nd[0])

            for row in 0..<nd[0] {
                X[row] = readLine()!.split(separator: " ").map { String($0) }
            }

            for _ in 0..<d {
                X = rotate(X)
            }

            X.forEach {
                print($0.joined(separator: " "))
            }
        }

        func rotate(_ X: [[String]]) -> [[String]] {
            let size = X.count
            var newX = X

            for row in 0..<size {
                newX[row][size/2] = X[row][row]
                newX[row][size-row-1] = X[row][size/2]
                newX[size/2][size-row-1] = X[row][size-row-1]
                newX[row][row] = X[size/2][row]
            }

            return newX
        }
    }
}
