//
//  32280.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 12/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32280
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ32280: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 363B
        let N = Int(readLine()!)!
        var teacher = ""
        var students = [String]()

        for _ in 0...N {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[1] == "teacher" { teacher = input[0] }
            else { students.append(input[0]) }
        }

        let time = readLine()!
        students.sort(by: >)
        print(students.filter { $0 >= time }.filter { $0 >= teacher }.count)
    }
}
