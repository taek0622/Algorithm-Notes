//
//  18238.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/18238
//  알고리즘 분류: 구현, 그리디 알고리즘, 문자열

class BOJ18238: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 310B
        let string = readLine()!.map { Int($0.asciiValue! - 65) }
        var time = string[0] > 26 - string[0] ? 26 - string[0] : string[0]

        for idx in 1..<string.count {
            var diff = string[idx] - string[idx - 1]

            if diff < 0 {
                diff = -diff
            }

            time += diff > 26 - diff ? 26 - diff : diff
        }

        print(time)
    }
}
