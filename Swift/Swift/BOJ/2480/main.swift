//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다.
// 같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다.
// 모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.

var input = readLine()!.split(separator: " ").map {
    Int($0)!
}

input.sort()

if input[0] == input[1] && input[0] == input[2] {
    print("\(input[0] * 1000 + 10000)")
}
else if input[0] == input[1] {
    print("\(input[0] * 100 + 1000)")
}
else if input[1] == input[2] {
    print("\(input[1] * 100 + 1000)")
}
else {
    print("\(input[2] * 100)")
}
