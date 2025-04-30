//
//  3035.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3035
//  알고리즘 분류: 구현, 문자열

class BOJ3035: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 432B
        let RCZRZC = readLine()!.split(separator: " ").map { Int($0)! }
        var scan = Array(repeating: Array(repeating: "", count: RCZRZC[1]), count: RCZRZC[0])

        for idx in 0..<RCZRZC[0] {
            scan[idx] = readLine()!.map { String($0) }
        }

        for r in 0..<RCZRZC[0] {
            for _ in 0..<RCZRZC[2] {
                for c in 0..<RCZRZC[1] {
                    print(String(repeating: scan[r][c], count: RCZRZC[3]), terminator: "")
                }

                print()
            }
        }
    }
}
