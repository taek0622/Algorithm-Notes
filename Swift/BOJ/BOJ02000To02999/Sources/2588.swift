//
//  2588.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

//  문제 링크: https://www.acmicpc.net/problem/2588
//  알고리즘 분류: 수학, 사칙연산

class BOJ2588: Solvable {
    func run() {
        let input1 = Int(readLine()!)!
        let input2 = Int(readLine()!)!

        print(input1 * (input2 % 10))
        print(input1 * (input2 % 100 / 10))
        print(input1 * (input2 / 100))
        print(input1 * input2)
    }
}
