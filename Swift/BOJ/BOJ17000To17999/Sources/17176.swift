//
//  17176.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17176
//  알고리즘 분류: 구현, 문자열

class BOJ17176: Solvable {
    func run() {
        // 메모리: 76100KB, 시간: 68ms, 코드 길이: 299B
        _ = readLine()
        let crypt = readLine()!.split(separator: " ").map { Int($0)! }.map { $0 == 0 ? " " : (1...26 ~= $0 ? String(Character(UnicodeScalar($0 + 64)!)) : String(Character(UnicodeScalar($0 + 70)!))) }.sorted()
        let text = readLine()!.map { String($0) }.sorted()
        print(crypt == text ? "y" : "n")
    }
}
