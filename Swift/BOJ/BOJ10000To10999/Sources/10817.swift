//
//  10817.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10817
//  알고리즘 분류: 구현, 정렬

class BOJ10817: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 69B
        print(readLine()!.split(separator: " ").map { Int($0)! }.sorted()[1])
    }
}
