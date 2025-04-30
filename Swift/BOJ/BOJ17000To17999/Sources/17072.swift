//
//  17072.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17072
//  알고리즘 분류: 구현

class BOJ17072: Solvable {
    func run() {
        // 메모리: 69464KB, 시간: 132ms, 코드 길이: 647B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var art = ""

        for _ in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 0..<NM[1] {
                let intensity = input[idx*3] * 2126 + input[idx*3+1] * 7152 + input[idx*3+2] * 722

                switch intensity {
                    case 0..<510000:
                        art += "#"
                    case 510000..<1020000:
                        art += "o"
                    case 1020000..<1530000:
                        art += "+"
                    case 1530000..<2040000:
                        art += "-"
                    default:
                        art += "."
                }
            }

            art += "\n"
        }

        print(art)
    }
}
