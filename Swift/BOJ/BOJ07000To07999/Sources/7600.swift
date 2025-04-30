//
//  7600.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/7600
//  알고리즘 분류: 구현, 문자열

class BOJ7600: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 301B
        while let input = readLine(), input != "#" {
            var alphabet = Array(repeating: false, count: 26)

            for char in input.lowercased() {
                let idx = Int(char.asciiValue!) - 97

                if 0..<26 ~= idx {
                    alphabet[idx] = true
                }
            }

            print(alphabet.filter { $0 }.count)
        }
    }
}
