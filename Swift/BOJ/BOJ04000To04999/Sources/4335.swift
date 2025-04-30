//
//  4335.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4335
//  알고리즘 분류: 구현

class BOJ4335: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 387B
        var (minNum, maxNum) = (0, 11)

        while let N = Int(readLine()!), N != 0 {
            let answer = readLine()!

            if answer == "too high" {
                maxNum = min(maxNum, N-1)
            } else if answer == "too low" {
                minNum = max(minNum, N+1)
            } else {
                print("Stan \(maxNum >= minNum && minNum...maxNum ~= N ? "may be " : "is dis")honest")
                (minNum, maxNum) = (0, 11)
            }
        }
    }
}
