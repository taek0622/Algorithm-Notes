//
//  15739.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15739
//  알고리즘 분류: 구현

class BOJ15739: Solvable {
    func run() {
        // 메모리: 69384KB, 시간: 12ms, 코드 길이: 852B
        let N = Int(readLine()!)!
        var numbers = Set<Int>()
        var col = Array(repeating: 0, count: N)
        var (upLeftToDownRight, upRightToDownLeft) = (0, 0)
        var (downRightCol, downLeftCol) = (0, N-1)
        var isMagicSquare = true
        let targetSum = N * (N * N + 1) / 2

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if input.reduce(0, +) != targetSum {
                isMagicSquare = false
            }

            for idx in 0..<N {
                numbers.insert(input[idx])
                col[idx] += input[idx]
            }

            upLeftToDownRight += input[downRightCol]
            downRightCol += 1
            upRightToDownLeft += input[downLeftCol]
            downLeftCol -= 1
        }

        if numbers != Set(1...N*N) || upLeftToDownRight != targetSum || upRightToDownLeft != targetSum || col.filter { $0 != targetSum }.count != 0 {
            isMagicSquare = false
        }

        print(isMagicSquare ? "TRUE" : "FALSE")
    }
}
