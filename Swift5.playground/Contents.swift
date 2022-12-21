import UIKit
import RxSwift
import RxCocoa

var justObservable = Observable<Int>.just(1)
let ofObservable = Observable<Int>.of(1,1,2,1,3,0)
var fromObservable = Observable<Int>.from([1,2,3,1,2,23,22,23,44])



//Observables


//observable is subscribed here
//but can an observable observe no -> it's a one way communcation but to do a two way communication we will need to use subject
//there are 4 types of subjects avaiable
//PublishSubject
// Send and value eimitted post subscription
//BehviourSubject
// Send last value emitted and new ones
//RelaySubject
// sends all the values emited so far and new ones
//AsyncSubject
//

BehaviorRelay
justObservable.subscribe(onNext: { value in
//    this block would get all the elements in the Observable Sequence
    print(value)
},onError: { error in
    print("Error")
}, onCompleted: {
//    marks the completion of sequence
    print("comp")
})

var name: BehaviorSubject<String> = BehaviorSubject<String>(value: "aa")

let sub1 = name.subscribe{element in
    print(element)
}

name.onNext("aba")

var newObservable = Observable<String>.just("sample")

newObservable.subscribe{ ele  in
    print(ele)
}








