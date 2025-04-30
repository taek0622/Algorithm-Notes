//
//  11319.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11319
//  알고리즘 분류: 구현, 문자열

class BOJ11319: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 265B
        let S = Int(readLine()!)!
        let vowels: [Character] = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

        for _ in 0..<S {
            let line = readLine()!.filter { $0 != " " }
            let count = line.filter { vowels.contains($0) }.count
            print(line.count - count, count)
        }
    }
}
