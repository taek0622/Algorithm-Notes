//
//  1459.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/01.
//

//  문제 링크: https://www.acmicpc.net/problem/1459
//  알고리즘 분류: 수학, 많은 조건 분기

class BOJ1459: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 411B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = 0

        if input[2] * 2 < input[3] {
            result = (input[0] + input[1]) * input[2]
        } else {
            let mini = min(input[0], input[1])
            let module = max(input[0], input[1]) - mini
            result = mini * input[3]
            result += input[2] < input[3] ? module * input[2] : module / 2 * 2 * input[3] + (module % 2) * input[2]
        }

        print(result)
    }
}
