//
//  10996.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10996
//  알고리즘 분류: 구현

class BOJ10996: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 322B
        let N = Int(readLine()!)!
        var result = ""

        if N == 1 {
            result = "*"
        } else {
            for row in 1...N*2 {
                for col in 1...N {
                    if (row + col) % 2 == 0 {
                        result += "*"
                    } else {
                        result += " "
                    }
                }

                result += "\n"
            }
        }

        print(result)
    }
}
