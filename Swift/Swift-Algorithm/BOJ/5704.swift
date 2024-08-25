//
//  5704.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5704
//  알고리즘 분류: 구현, 문자열

class BOJ5704: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 130B
        while let input = readLine(), input != "*" {
            var set = Set(input)
            set.remove(" ")
            print(set.count == 26 ? "Y" : "N")
        }
    }
}
