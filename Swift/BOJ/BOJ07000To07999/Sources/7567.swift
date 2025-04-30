//
//  7567.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/7567
//  알고리즘 분류: 구현, 문자열

class BOJ7567: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 204B
        let dishes = Array(readLine()!)
        var height = 0

        for idx in dishes.indices {
            if idx == 0 || dishes[idx] != dishes[idx - 1] {
                height += 10
            } else {
                height += 5
            }
        }

        print(height)
    }
}
