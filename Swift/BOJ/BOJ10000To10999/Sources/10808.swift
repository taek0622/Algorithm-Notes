//
//  10808.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10808
//  알고리즘 분류: 구현, 문자열

class BOJ10808: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드: 172B
    private func solution1() {
        let input = readLine()!
        var dict = Array(repeating: 0, count: 26)

        for ch in input.utf8 {
            dict[Int(ch)-97] += 1
        }

        print(dict.map { String($0) }.joined(separator: " "))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 179B
    private func solution2() {
        let input = readLine()!
        var dict = Array(repeating: 0, count: 26)

        for ch in input {
            dict[Int(ch.asciiValue!)-97] += 1
        }

        print(dict.map { String($0) }.joined(separator: " "))
    }
}
