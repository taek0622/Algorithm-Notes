//
//  1919.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1919
//  알고리즘 분류: 구현, 문자열

class BOJ1919: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 380B
        let word1 = Array(readLine()!)
        let word2 = Array(readLine()!)
        var dict = Array(repeating: 0, count: 26)
        var count = 0

        for char in word1 {
            dict[Int(char.asciiValue!) - 97] += 1
        }

        for char in word2 {
            dict[Int(char.asciiValue!) - 97] -= 1
        }

        for char in dict where char != 0 {
            if char > 0 {
                count += char
            } else {
                count -= char
            }
        }

        print(count)
    }
}
