//
//  1343.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1343
//  알고리즘 분류: 구현, 그리디 알고리즘

class BOJ1343: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 544B
        let board = readLine()!
        var result = ""
        var count = 0

        for part in board {
            if part == "." {
                if count % 2 != 0 {
                    result = "-1"
                    break
                } else {
                    if count == 2 {
                        result += "BB"
                        count = 0
                    }

                    result += "."
                }
            } else {
                count += 1

                if count == 4 {
                    result += "AAAA"
                    count = 0
                }
            }
        }

        if count % 2 != 0 {
            result = "-1"
        } else if count == 2 {
            result += "BB"
        }

        print(result)
    }
}
