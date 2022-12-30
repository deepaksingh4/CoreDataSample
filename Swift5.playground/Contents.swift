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



//justObservable.subscribe(onNext: { value in
////    this block would get all the elements in the Observable Sequence
//    print(value)
//},onError: { error in
//    print("Error")
//}, onCompleted: {
////    marks the completion of sequence
//    print("comp")
//})
//
//var name: BehaviorSubject<String> = BehaviorSubject<String>(value: "aa")
//
//let sub1 = name.subscribe{element in
//    print(element)
//}
//
//name.onNext("aba")
//
//var newObservable = Observable<String>.just("sample")
//
//newObservable.subscribe{ ele  in
//    print(ele)
//}





//    let disposeBag = DisposeBag()
//
//    struct Player {
//        init(score: Int) {
//            self.score = ReplaySubject<Int>.create(bufferSize: 3)
//            self.score.onNext(score)
//        }
//
//        let score: ReplaySubject<Int>
//    }
//
//    let 👦🏻 = Player(score: 80)
//    let 👧🏼 = Player(score: 90)
//
//    let player = BehaviorSubject(value: 👦🏻)
//
//    player.asObservable()
//        .flatMap { playr in
//            playr.score.onNext(55)
//            playr.score.onNext(65)
//            playr.score.onNext(75)
//            return playr.score.asObservable()
//
//        } // Change flatMap to flatMapLatest and observe change in printed output
//        .subscribe(onNext: { print($0) })
//        .disposed(by: disposeBag)
//
//    👦🏻.score.onNext(85)
//
//    player.onNext(👧🏼)
//
//    👦🏻.score.onNext(95) // Will be printed when using flatMap, but will not be printed when using flatMapLatest
//    👧🏼.score.onNext(100)
//
//flatmap merging the array inone single array


enum SError : Error{
    case Unkown
}
let disposeBag = DisposeBag()
var count = 1

let sequenceThatErrors = Observable<String>.create { observer in
    observer.onNext("🍎")
    observer.onNext("🍐")
    observer.onNext("🍊")
    
    if count < 5 {
        observer.onError(SError.Unkown)
        print("Error encountered")
        count += 1
    }
    
    observer.onNext("🐶")
    observer.onNext("🐱")
    observer.onNext("🐭")
    observer.onCompleted()
    
    return Disposables.create()
}

sequenceThatErrors
    .retry(4)
    .subscribe(onNext: { print($0) })
    .disposed(by: disposeBag)

