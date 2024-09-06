//
//  11179.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11179
//  알고리즘 분류: 수학, 구현, 문자열

class BOJ11179: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 101B
        let N = Int(readLine()!)!
        var bin = String(String(N, radix: 2).reversed())
        print(Int(bin, radix: 2)!)
    }
}
