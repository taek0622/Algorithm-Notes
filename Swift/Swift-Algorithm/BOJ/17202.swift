//
//  17202.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17202
//  알고리즘 분류: 구현, 문자열, 시뮬레이션

class BOJ17202: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 487B
        let A = readLine()!.map { Int(String($0))! }
        let B = readLine()!.map { Int(String($0))! }
        var compatibility = [Int]()

        for idx in 0..<8 {
            compatibility.append(A[idx])
            compatibility.append(B[idx])
        }

        while compatibility.count > 2 {
            var sum = Array(repeating: 0, count: compatibility.count - 1)

            for idx in 0..<sum.count {
                sum[idx] = (compatibility[idx] + compatibility[idx+1]) % 10
            }

            compatibility = sum
        }

        print(compatibility.map { String($0) }.joined())
    }
}
