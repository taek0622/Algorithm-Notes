//
//  10864.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10864
//  알고리즘 분류: 구현

class BOJ10864: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 319B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var students = Array(repeating: Set<Int>(), count: NM[0])

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            students[AB[0]].insert(AB[1])
            students[AB[1]].insert(AB[0])
        }

        students.forEach {
            print($0.count)
        }
    }
}
