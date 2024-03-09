//
//  10830.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10819
//  알고리즘 분류: 수학, 분할 정복, 분할 정복을 이용한 거듭제곱, 선형대수학

class BOJ10830: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 1023B
        let NB = readLine()!.split(separator: " ").map { Int($0)! }
        var (N, B) = (NB[0], NB[1])
        var matrix = [[Int]]()
        var product = [[Int]]()

        for _ in 0..<N {
            matrix.append(readLine()!.split(separator: " ").map { Int($0)! })
        }

        while B > 1 {
            if B % 2 == 1 {
                if product.isEmpty {
                    product = matrix
                } else {
                    product = multiplyMatrix(matrix, product)
                }
            }

            matrix = multiplyMatrix(matrix, matrix)
            B /= 2
        }

        if !product.isEmpty {
            matrix = multiplyMatrix(matrix, product)
        }

        for idx in 0..<N {
            print(matrix[idx].map { String($0 % 1000) }.joined(separator: " "))
        }

        func multiplyMatrix(_ matrix1: [[Int]], _ matrix2: [[Int]]) -> [[Int]] {
            var result = Array(repeating: Array(repeating: 0, count: N), count: N)

            for row in 0..<N {
                for col in 0..<N {
                    for mid in 0..<N {
                        result[row][col] += matrix1[row][mid] * matrix2[mid][col]
                        result[row][col] %= 1000
                    }
                }
            }

            return result
        }
    }
}
