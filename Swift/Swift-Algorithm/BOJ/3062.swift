//
//  3062.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3062
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

class BOJ3062: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 205B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!
            let number = String(Int(input)! + Int(String(input.reversed()))!)
            print(number == String(number.reversed()) ? "YES" : "NO")
        }
    }
}
