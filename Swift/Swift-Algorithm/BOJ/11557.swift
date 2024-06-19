//
//  11557.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11557
//  알고리즘 분류: 구현, 정렬

class BOJ11557: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 323B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var (school, wine) = ("", 0)
            let N = Int(readLine()!)!

            for _ in 0..<N {
                let SL = readLine()!.split(separator: " ")
                let L = Int(SL[1])!

                if L > wine {
                    school = String(SL[0])
                    wine = L
                }
            }

            print(school)
        }
    }
}
