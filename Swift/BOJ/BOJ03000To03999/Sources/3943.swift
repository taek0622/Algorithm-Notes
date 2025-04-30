//
//  3943.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3943
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ3943: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 240ms, 코드 길이: 218B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var n = Int(readLine()!)!
            var seq = [Int]()

            while seq.last != 1 {
                seq.append(n)
                n = n % 2 == 0 ? n / 2 : n * 3 + 1
            }

            print(seq.max()!)
        }
    }
}
