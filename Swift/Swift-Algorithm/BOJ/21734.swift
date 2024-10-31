//
//  21734.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/21734
//  알고리즘 분류: 구현, 문자열

class BOJ21734: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 195B
        let S = readLine()!

        for char in S {
            var count = 0

            for num in String(Int(char.asciiValue!)) {
                count += Int(String(num))!
            }

            print(String(repeating: char, count: count))
        }
    }
}
