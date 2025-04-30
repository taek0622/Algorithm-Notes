//
//  10384.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10384
//  알고리즘 분류: 구현, 문자열

class BOJ10384: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 575B
        let n = Int(readLine()!)!

        for caseNumber in 1...n {
            var alphabets = Array(repeating: 0, count: 26)
            let sentence = readLine()!

            for char in sentence {
                let ascii = Int(char.asciiValue!)

                switch ascii {
                    case 65...90: alphabets[ascii - 65] += 1
                    case 97...122: alphabets[ascii - 97] += 1
                    default: break
                }
            }

            let minCount = alphabets.min()!

            print("Case \(caseNumber): \(minCount == 0 ? "Not a pangram" : minCount == 1 ? "Pangram!" : minCount == 2 ? "Double pangram!!" : "Triple pangram!!!")" )
        }
    }
}
