//
//  5026.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5026
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산, 파싱

class BOJ5026: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 188B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let expression = readLine()!
            print(expression == "P=NP" ? "skipped" : expression.split(separator: "+").map { Int($0)! }.reduce(0, +) )
        }
    }
}
