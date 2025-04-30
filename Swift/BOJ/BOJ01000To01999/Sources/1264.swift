//
//  1264.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1264
//  알고리즘 분류: 구현, 문자열

class BOJ1264: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 155B
        while let input = readLine(), input != "#" {
            print(input.lowercased().filter { $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u" }.count)
        }
    }
}
