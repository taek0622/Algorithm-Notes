//
//  12871.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12871
//  알고리즘 분류: 수학, 구현, 문자열

class BOJ12871: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 131B
        let (s, t) = (readLine()!, readLine()!)
        print(String(repeating: s, count: t.count) == String(repeating: t, count: s.count) ? 1 : 0)
    }
}
