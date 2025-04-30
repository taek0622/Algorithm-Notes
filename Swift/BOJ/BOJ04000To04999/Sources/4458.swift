//
//  4458.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4458
//  알고리즘 분류: 구현, 문자열

class BOJ4458: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 167B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var sentence = readLine()!.map { String($0) }
            sentence[0] = sentence[0].uppercased()
            print(sentence.joined())
        }
    }
}
