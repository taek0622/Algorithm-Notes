//
//  4821.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4821
//  알고리즘 분류: 구현, 문자열, 파싱

class BOJ4821: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 168ms, 코드 길이: 495B
        while let lastPage = Int(readLine()!), lastPage != 0 {
            let pages = readLine()!.split(separator: ",")
            var printPage = Set<Int>()

            for page in pages {
                let range = page.split(separator: "-").map { Int($0)! }
                let low = range[0]
                let high = min(range.count > 1 ? range[1] : low, lastPage)

                if low > high {
                    continue
                }

                for pageNum in low...high {
                    printPage.insert(pageNum)
                }
            }

            print(printPage.count)
        }
    }
}
