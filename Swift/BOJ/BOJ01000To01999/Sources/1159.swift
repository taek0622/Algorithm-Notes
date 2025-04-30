//
//  1159.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1159
//  알고리즘 분류: 구현, 문자열

class BOJ1159: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 325B
        let N = Int(readLine()!)!
        var dict = Array(repeating: 0, count: 26)

        for _ in 0..<N {
            let name = Array(readLine()!)
            dict[Int(name[0].asciiValue!) - 97] += 1
        }

        let result = dict.enumerated().filter { $0.element >= 5 }.map { String(Unicode.Scalar($0.offset + 97)!) }
        print(result.isEmpty ? "PREDAJA" : result.joined())
    }
}
