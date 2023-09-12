//
//  1969.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/12.
//

//  문제 링크: https://www.acmicpc.net/problem/1969
//  알고리즘 분류: 구현, 문자열, 그리디 알고리즘, 브루트포스 알고리즘

class BOJ1969: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 1242B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var DNA = Array(repeating: (A: 0, T: 0, G: 0, C: 0), count: input[1])
        var result = ("", 0)

        for _ in 0..<input[0] {
            let text = readLine()!.map { String($0) }

            for idx in text.indices {
                switch text[idx] {
                case "A":
                    DNA[idx].A += 1
                case "T":
                    DNA[idx].T += 1
                case "G":
                    DNA[idx].G += 1
                case "C":
                    DNA[idx].C += 1
                default:
                    break
                }
            }
        }

        for idx in DNA.indices {
            if DNA[idx].A >= DNA[idx].T && DNA[idx].A >= DNA[idx].G && DNA[idx].A >= DNA[idx].C {
                result.0 += "A"
                result.1 += (DNA[idx].C + DNA[idx].G + DNA[idx].T)
            } else if DNA[idx].C > DNA[idx].A && DNA[idx].C >= DNA[idx].T && DNA[idx].C >= DNA[idx].G {
                result.0 += "C"
                result.1 += (DNA[idx].A + DNA[idx].G + DNA[idx].T)
            } else if DNA[idx].G > DNA[idx].A && DNA[idx].G > DNA[idx].C && DNA[idx].G >= DNA[idx].T {
                result.0 += "G"
                result.1 += (DNA[idx].A + DNA[idx].C + DNA[idx].T)
            } else {
                result.0 += "T"
                result.1 += (DNA[idx].A + DNA[idx].C + DNA[idx].G)
            }
        }

        print("\(result.0)\n\(result.1)")
    }
}
