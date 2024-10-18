//
//  17294.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17294
//  알고리즘 분류: 수학, 구현

class BOJ17294: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 310B
        let k = readLine()!.map { Int(String($0))! }
        var isCute = true

        if k.count > 1 {
            let diff = k[0] - k[1]

            for idx in 1..<k.count where k[idx - 1] - k[idx] != diff {
                isCute = false
                break
            }
        }

        print(isCute ? "◝(⑅•ᴗ•⑅)◜..°♡ 뀌요미!!" : "흥칫뿡!! <(￣ ﹌ ￣)>")
    }
}
