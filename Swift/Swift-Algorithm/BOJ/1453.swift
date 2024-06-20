//
//  1453.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1453
//  알고리즘 분류: 구현

class BOJ1453: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 99B
        let N = Int(readLine()!)!
        let people = Set(readLine()!.split(separator: " "))
        print(N-people.count)
    }
}
