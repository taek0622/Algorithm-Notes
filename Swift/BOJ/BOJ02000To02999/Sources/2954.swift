//
//  2954.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2954
//  알고리즘 분류: 구현, 문자열

class BOJ2954: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 261B
        let crypt = Array(readLine()!)
        var origin = [Character]()
        var idx = 0

        while idx < crypt.count {
            origin.append(crypt[idx])

            if ["a", "e", "i", "o", "u"].contains(crypt[idx]) {
                idx += 3
            } else {
                idx += 1
            }
        }

        print(String(origin))
    }
}
