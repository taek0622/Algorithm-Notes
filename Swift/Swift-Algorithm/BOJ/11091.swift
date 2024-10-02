//
//  11091.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11091
//  알고리즘 분류: 구현, 문자열

class BOJ11091: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 458B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var alphabet = Array(repeating: 0, count: 26)
            let input = readLine()!.lowercased()

            for char in input {
                let word = Int(char.asciiValue!) - 97

                if 0..<26 ~= word {
                    alphabet[word] += 1
                }
            }

            let idx = alphabet.enumerated().filter { $0.element == 0 }.map { String(UnicodeScalar($0.offset + 97)!) }.joined()
            print(idx.isEmpty ? "pangram" : "missing \(idx)")
        }
    }
}
