//
//  2684.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2684
//  알고리즘 분류: 구현, 문자열

class BOJ2684: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 777B
        let P = Int(readLine()!)!

        for _ in 0..<P {
            var count = [0, 0, 0, 0, 0, 0, 0, 0]
            let conis = Array(readLine()!)

            for idx in 0..<38 {
                switch conis[idx...idx+2] {
                    case ["T", "T", "T"]:
                        count[0] += 1
                    case ["T", "T", "H"]:
                        count[1] += 1
                    case ["T", "H", "T"]:
                        count[2] += 1
                    case ["T", "H", "H"]:
                        count[3] += 1
                    case ["H", "T", "T"]:
                        count[4] += 1
                    case ["H", "T", "H"]:
                        count[5] += 1
                    case ["H", "H", "T"]:
                        count[6] += 1
                    case ["H", "H", "H"]:
                        count[7] += 1
                    default:
                        break
                }
            }

            print(count.map { String($0) }.joined(separator: " "))
        }
    }
}
