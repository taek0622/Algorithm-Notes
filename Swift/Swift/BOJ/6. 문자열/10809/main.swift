//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/06/07.
//

// 메모리: 69096KB, 시간: 8ms, 코드 길이: 193B
let S = Array(readLine()!)

let alphabet = Array("abcdefghijklmnopqrstuvwxyz")

var containS = ""

for i in alphabet {
    containS += String(S.firstIndex(of: i) ?? -1) + " "
}

print(containS)
