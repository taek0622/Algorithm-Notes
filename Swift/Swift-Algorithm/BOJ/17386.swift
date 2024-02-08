//
//  17386.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17386
//  알고리즘 분류: 기하학, 선분 교차 판정

class BOJ17386: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 668B
        let l1 = readLine()!.split(separator: " ").map { Int($0)! }
        let l2 = readLine()!.split(separator: " ").map { Int($0)! }

        var p1 = (l1[0], l1[1])
        var p2 = (l1[2], l1[3])
        var p3 = (l2[0], l2[1])
        var p4 = (l2[2], l2[3])

        let p1p2 = CCW(p1, p2, p3) * CCW(p1, p2, p4)
        let p3p4 = CCW(p3, p4, p1) * CCW(p3, p4, p2)

        if p1p2 == 0 && p3p4 == 0 {
            if p1 > p2 {
                swap(&p1, &p2)
            }

            if p3 > p4 {
                swap(&p3, &p4)
            }

            print(p3 <= p2 && p1 <= p4 ? 1 : 0)
        } else {
            print(p1p2 <= 0 && p3p4 <= 0 ? 1 : 0)
        }

        func CCW(_ p1: (Int, Int), _ p2: (Int, Int), _ p3: (Int, Int)) -> Int {
            return ((p2.0-p1.0)*(p3.1-p1.1)-(p3.0-p1.0)*(p2.1-p1.1)).signum()
        }
    }
}
