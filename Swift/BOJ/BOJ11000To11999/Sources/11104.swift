//
//  11104.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11104
//  알고리즘 분류: 수학, 구현

class BOJ11104: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 84B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            print(Int(readLine()!, radix: 2)!)
        }
    }
}
