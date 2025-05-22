//
//  19844.swift
//  BOJ19000To19999
//
//  Created by 김민택 on 5/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/19844
//  알고리즘 분류: 구현, 문자열

public struct BOJ19844: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 446B
        let string = readLine()!.split { $0 == " " || $0 == "-" }.map { String($0) }
        var count = 0
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "h"]
        let front = Set(["c", "j", "n", "m", "t", "s", "l", "d", "qu"])

        for str in string {
            let divide = str.split(separator: "'").map { String($0) }
            count += 1

            if divide.count > 1 && front.contains(divide[0]) && vowels.contains(divide[1].first!) {
                count += 1
            }
        }

        print(count)
    }
}
