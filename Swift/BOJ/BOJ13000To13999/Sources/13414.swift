//
//  13414.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13414
//  알고리즘 분류: 구현, 자료 구조, 해시를 사용한 집합과 맵

class BOJ13414: Solvable {
    func run() {
        // 메모리: 88564KB, 시간: 280ms, 코드 길이: 261B
        let KL = readLine()!.split(separator: " ").map { Int($0)! }
        var students = [String: Int]()

        for idx in 0..<KL[1] {
            let student = readLine()!
            students[student] = idx
        }

        students.sorted(by: { $0.value < $1.value }).prefix(KL[0]).forEach { print($0.key) }
    }
}
