//
//  13277.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/24.
//

// 문제: https://www.acmicpc.net/problem/13277

class BOJ13277: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        var A = input[0].map { Int(String($0))! }
        var B = input[1].map { Int(String($0))! }
        var result = Array(repeating: 0, count: A.count + B.count)

        A.reverse()
        B.reverse()

        for idx in B.indices {
            for number in A.indices {
                result[idx + number] += (B[idx] * A[number])
                result[idx + number + 1] += (result[idx + number] / 10)
                result[idx + number] %= 10
            }
        }

        result.reverse()

        while result.first == 0 && result.count != 1 {
            result.removeFirst()
        }

        print(result.map { String($0) }.joined())
    }
}
