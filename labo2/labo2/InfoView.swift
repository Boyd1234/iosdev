//
//  InfoView.swift
//  labo2
//
//  Created by Boyd Bulcaen on 30/09/2025.
//

import SwiftUI

struct InfoView: View {

        var body: some View {
            ScrollView{
                VStack {
                    Image("Barcelona")
                    Text("Barcelona")
                        .font(.system(size: 36))
                        .bold()
                        .foregroundColor(.green)
                    Text("blablablablabalablabalablablabla blklfjsdfpq dqskopdfjlqspfo milqsdfjpoizufpojsdmf jsopf qsdfklm qjsfplmqs djkfzeopijfdspmlfk jqfpo imzjefpsmldfj k,e)zffsdhgds tgsdhdsfgfghjhktuyrtyjetzqrsdfugiopomkjl;h,gnfbdvsfqertyuiyoulhkjg,fdnfhsreyteuiotlyr;t,rtjsyutkjftydrseygthrgeresqdtfgfjyftdhrsgesqldfkmjqs lkfqjdsf pjqsmdf ojpze fopujz foiqefu opqezfjookqzejflmdsfjkol mqsdfjml qsdjflk mqsdklfjm qsldjfkmqsdlfj mqsdfkjl mqsdfkjlmqsdfjklm qsdkjlf qsdjklf mqsdjkfl sqjdklf mqsdkjlfm qsdjf lmqsfd jklm qsfdq sdfuiopqs fjqsdok mfljkmqdsf jklm jsdfklmq sjkdflm qsjmlfd lqjksmdfioqzue fouqpzfjqsmdflj kqsmldf jklqs fdm sdfihqsojdfjmqslfjqsdlmjkd fjosqklf jqsplmdf jkqlsmf lqjsmkf jklmsqdf jklmqdsf klmjqsdkflqs jmfqsdklpfj msjmdfk qsdjmlf jqskf mqskjfl msqdjlf").foregroundColor(.gray)
                    Spacer()
                    Text("Climate")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("according to blabalablablabalablablablablablablablaqsjdkmflqsjdflmqskjfmlqsdkf jqkl fmjqsdflkm qsjfmlqsj fopiej fdlsqmkfj ,speoifj sdmklqfj qsplkjm ze lfkjsdqf, qsdfk jqsmdf ljqzieof pjmsfzepo uapfsdqj lkfjqzepiop")
                        .foregroundColor(.gray)

                }
            }
            

    }
    
}

#Preview {
    InfoView()
}
