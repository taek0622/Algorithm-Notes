//
//  20436.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20436
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ20436: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 917B
        let SLR = readLine()!.split(separator: " ").map { Int(Character(String($0)).asciiValue!) - 97 }
        let consonant = "qwertasdfgzxcv".map { Int(Character(String($0)).asciiValue!) - 97 }
        let alphabet = [(1, 0), (2, 4), (2, 2), (1, 2), (0, 2), (1, 3), (1, 4), (1, 5), (0, 7), (1, 6), (1, 7), (1, 8), (2, 6), (2, 5), (0, 8), (0, 9), (0, 0), (0, 3), (1, 1), (0, 4), (0, 6), (2, 3), (0, 1), (2, 1), (0, 5), (2, 0)]
        var (left, right) = (alphabet[SLR[0]], alphabet[SLR[1]])
        var time = 0

        readLine()!.map { Int(Character(String($0)).asciiValue!) - 97 }.forEach {
            let type = alphabet[$0]
            var compare = right

            if consonant.contains($0) {
                compare = left
                left = alphabet[$0]
            } else {
                right = alphabet[$0]
            }

            time += compare.0 - type.0 > 0 ? compare.0 - type.0 : type.0 - compare.0
            time += compare.1 - type.1 > 0 ? compare.1 - type.1 : type.1 - compare.1
            time += 1
        }

        print(time)
    }
}
