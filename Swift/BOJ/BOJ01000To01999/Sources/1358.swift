//
//  1358.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1358
//  알고리즘 분류: 기하학

class BOJ1358: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 562B
        let WHXYP = readLine()!.split(separator: " ").map { Double($0)! }
        let (W, H, X, Y, P) = (WHXYP[0], WHXYP[1], WHXYP[2], WHXYP[3], WHXYP[4])
        let R = H/2
        var count = 0

        for _ in 0..<Int(P) {
            let xy = readLine()!.split(separator: " ").map { Double($0)! }

            if X...X+W ~= xy[0] && Y...Y+H ~= xy[1] {
                count += 1
            } else if (xy[0] - X) * (xy[0] - X) + (xy[1] - (Y+R)) * (xy[1] - (Y+R)) <= R * R {
                count += 1
            } else if (xy[0] - (X+W)) * (xy[0] - (X+W)) + (xy[1] - (Y+R)) * (xy[1] - (Y+R)) <= R * R {
                count += 1
            }
        }

        print(count)
    }
}
