//
//  5939.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5939
//  알고리즘 분류: 구현, 정렬

class BOJ5939: Solvable {
    func run() {
        // 메모리: 69296KB, 시간: 16ms, 코드 길이: 419B
        let N = Int(readLine()!)!
        var cows = Array(repeating: (0, 0, 0), count: N)

        for idx in 0..<N {
            let hms = readLine()!.split(separator: " ").map { Int($0)! }
            cows[idx] = (hms[0], hms[1], hms[2])
        }

        cows.sort {
            if $0.0 == $1.0 {
                if $0.1 == $1.1 {
                    return $0.2 < $1.2
                }

                return $0.1 < $1.1
            }

            return $0.0 < $1.0
        }

        cows.forEach {
            print("\($0.0) \($0.1) \($0.2)")
        }
    }
}
