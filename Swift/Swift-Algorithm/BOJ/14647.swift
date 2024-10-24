//
//  14647.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14647
//  알고리즘 분류: 구현, 문자열

class BOJ14647: Solvable {
    func run() {
        // 메모리: 70700KB, 시간: 100ms, 코드 길이: 717B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var board = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])
        var totalCount = 0
        var maxCount = 0

        for row in 0..<nm[0] {
            let input = readLine()!.split(separator: " ")
            var rowCount = 0

            for col in 0..<nm[1] {
                board[row][col] = input[col].filter { $0 == "9" }.count
                totalCount += board[row][col]
                rowCount += board[row][col]
            }

            if rowCount > maxCount {
                maxCount = rowCount
            }
        }

        for col in 0..<nm[1] {
            var colCount = 0

            for row in 0..<nm[0] {
                colCount += board[row][col]
            }

            if colCount > maxCount {
                maxCount = colCount
            }
        }

        print(totalCount - maxCount)
    }
}
