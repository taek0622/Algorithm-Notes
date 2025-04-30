//
//  2407.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/16.
//

// 문제: https://www.acmicpc.net/problem/2407

class BOJ2407: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69240KB, 시간: 20ms, 코드 길이: 1118B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var triangle = Array(repeating: Array(repeating: "", count: 101), count: 101)
        print(combination(input[0], input[1]))

        func combination(_ n: Int, _ m: Int) -> String {
            if n == m || m == 0 {
                return "1"
            }

            if triangle[n][m] != "" {
                return triangle[n][m]
            }

            triangle[n][m] = add(combination(n - 1, m - 1), combination(n - 1, m))
            return triangle[n][m]
        }

        func add(_ num1: String, _ num2: String) -> String {
            var base = (num1.count <= num2.count ? num1 : num2).map { Int(String($0))! }
            var result = (num1.count <= num2.count ? num2 : num1).map { Int(String($0))! }

            base.reverse()
            result.reverse()

            var count = 0
            while count < base.count {
                result[count] += base[count]
                count += 1
            }

            count = 0
            while count < result.count - 1 {
                result[count + 1] += result[count] / 10
                result[count] %= 10
                count += 1
            }

            while result.last == 0 {
                result.removeLast()
            }

            result.reverse()

            return result.map { String($0) }.joined()
        }
    }

    // 메모리: 69240KB, 시간: 8ms, 코드 길이: 749B
    private func solution2() {
        let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
        let n = nm[0], m = nm[1]
        let limit: UInt64 = 1000000000000000000
        var left = [[UInt64]](repeating: [UInt64](repeating: 0, count: n + 1), count: n + 1)
        var right = [[UInt64]](repeating: [UInt64](repeating: 0, count: n + 1), count: n + 1)

        right[1][0] = 1
        right[1][1] = 1

        for i in 2...n {
            right[i][0] = 1
            right[i][i] = 1

            for j in 1..<i {
                right[i][j] = right[i - 1][j - 1] + right[i - 1][j]
                left[i][j] = left[i - 1][j - 1] + left[i - 1][j]

                if right[i][j] >= limit {
                    right[i][j] -= limit
                    left[i][j] += 1
                }
            }
        }

        if left[n][m] > 0 {
            print("\(left[n][m])" + "\(right[n][m])")
        } else {
            print(right[n][m])
        }

    }
}
