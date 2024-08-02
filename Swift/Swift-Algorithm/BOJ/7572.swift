//
//  7572.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/7572
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ7572: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 102B
        let N = Int(readLine()!)!
        let czodiac = Array("ABCDEFGHIJKL")
        print("\(czodiac[(N+8)%12])\((N+6)%10)")
    }
}
