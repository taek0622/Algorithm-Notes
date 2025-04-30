//
//  17173.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17173
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

class BOJ17173: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 272B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let K = readLine()!.split(separator: " ").map { Int($0)! }
        var set = Set<Int>()

        for num in K {
            for compare in 1...NM[0] where compare % num == 0 {
                set.insert(compare)
            }
        }

        print(set.reduce(0, +))
    }
}
