//
//  1001.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

//  문제 링크: https://www.acmicpc.net/problem/1001
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ1001: Solvable {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }

        print(input[0] - input[1])
    }
}
