//
//  14468.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14468
//  알고리즘 분류: 구현, 문자열

class BOJ14468: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 312B
        let path = readLine()!.map { $0 }
        var count = 0

        for start in 0..<52 {
            for end in (start+1)..<52 where path[start] == path[end] {
                for entrance in path[start...end] where path[start...end].filter { $0 == entrance }.count == 1 {
                    count += 1
                }

                break
            }
        }

        print(count / 2)
    }
}
