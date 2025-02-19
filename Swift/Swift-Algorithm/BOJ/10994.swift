//
//  10994.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10994
//  알고리즘 분류: 구현, 재귀

class BOJ10994: Solvable {
    func run() {
        // 메모리: 69232KB, 시간: 16ms, 코드 길이: 489B
        drawStar(Int(readLine()!)!).forEach {
            print($0)
        }

        func drawStar(_ n: Int) -> [String] {
            if n == 1 {
                return ["*"]
            }

            var prev = drawStar(n - 1)

            for idx in prev.indices {
                prev[idx] = "* " + prev[idx] + " *"
            }

            return [String(repeating: "*", count: prev[0].count), "*" + String(repeating: " ", count: prev[0].count - 2) + "*"] + prev + ["*" + String(repeating: " ", count: prev[0].count - 2) + "*", String(repeating: "*", count: prev[0].count)]
        }
    }
}
