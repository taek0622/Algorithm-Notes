//
//  4539.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4539
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ4539: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 340B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            var x = readLine()!.map { Int(String($0))! }

            if x.count != 1 {
                for idx in stride(from: x.count - 1, to: 0, by: -1) {
                    if 5...9 ~= x[idx] {
                        x[idx - 1] += 1
                    }

                    x[idx] = 0
                }
            }

            print(x.map { String($0) }.joined())
        }
    }
}
