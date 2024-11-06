//
//  2703.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2703
//  알고리즘 분류: 구현, 문자열

class BOJ2703: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 272B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let crypt = readLine()!.map { $0 != " " ? Int($0.asciiValue!) - 65 : 26 }
            let rule = readLine()!.map { Int($0.asciiValue!) - 65 }
            print(crypt.map { $0 == 26 ? " " : String(UnicodeScalar(rule[$0] + 65)!) }.joined())
        }
    }
}
