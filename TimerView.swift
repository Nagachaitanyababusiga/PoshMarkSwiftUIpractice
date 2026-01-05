
import SwiftUI
internal import Combine

struct TimerView: View {
    @State private var time: Int = 20
    @State private var timecustom: Int = 20
    @State private var setter: Double = 30
    @State private var timerCanceller: Cancellable?
    
    var styledtxt: AttributedString{
        var txt = AttributedString("The time is \(time)");
        if let range = txt.range(of: "The time is "){
            txt[range].foregroundColor = .black
        }
        if let range = txt.range(of: "\(time)"){
            txt[range].foregroundColor = .red
        }
        return txt;
    }
    
    //timer syntax very important
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    let customtimer = Timer.publish(every: 1.0, on: .main, in: .common)
    
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Slider(value: $setter, in: 1...100)
                    .frame(maxWidth: .infinity)
                Button("Set time"){
                    timecustom = Int(setter)
                    time = Int(setter)
                    timerCanceller = customtimer
                        .autoconnect()
                        .sink{_ in
                            if(timecustom>0){
                                timecustom = timecustom - 1;
                            }else{
                                timerCanceller?.cancel()
                            }
                        }
                }
                .buttonStyle(.borderedProminent)
            }
            //This part of the declaration is also important
            Text(styledtxt)
                .italic()
                .onReceive(timer){ _ in
                    if(time>0){
                        time=time-1;
                    }
                }
            Text("Custom time is : \(timecustom)")
                .italic()
        }
        .padding()
    }
}

#Preview {
    TimerView()
}
