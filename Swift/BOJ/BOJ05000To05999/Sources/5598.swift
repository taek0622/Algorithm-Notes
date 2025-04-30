//
//  5598.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5598
//  알고리즘 분류: 구현, 문자열

class BOJ5598: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 189B
        let input = Array(readLine()!)
        var result = [String]()

        for char in input {
            result.append(String(Unicode.Scalar((Int(char.asciiValue!) - 65 + 23) % 26 + 65)!))
        }

        print(result.joined())
    }
}
