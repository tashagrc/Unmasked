import SwiftUI

struct PaperBackgroundView: View {
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ForEach(0..<Int(geometry.size.height / 40), id: \.self) { _ in
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 40)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color.gray),
                            alignment: .bottom
                        )
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct TaskView: View {
    @StateObject private var viewModel = TaskViewModel()
    
    @State private var currentFlow: AppFlow = .flow0
    
    enum AppFlow {
        case flow0
        case flow1
        case flow2
        case flow3
        case flow4
        case flow5
        
        case flow6
        case flow7
        case flow8
        case flow9
        case flow10
        
        case flow11
        case flow12
        case flow13
        case flow14
        case flow15
        
        case flow16
        case flow17
        case flow18
        case flow19
        case flow20
        
        case flow21
        case flow22
        case flow23
        case flow24
        case flow25
        
        case flow26
        case flow27
        case flow28
        case flow29
        case flow30
        
    }
    
    @StateObject private var dmViewModel = DMsViewModel()
    @StateObject private var postViewModel = PostViewModel()
    @StateObject private var dialogViewModel = DialogViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ZStack(alignment: .topLeading) {
                        PaperBackgroundView()
                            .frame(width: UIScreen.main.bounds.width)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Task List")
                                .font(.custom("Marker Felt", size: 30))
                                .bold()
                                .padding(.top, 40)
                                .padding(.bottom, 10)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            ForEach(Array(viewModel.tasks.enumerated()), id: \.element.id) { index, task in
                                if viewModel.showTask(at: index) {
                                    HStack {
                                        Text(task.title)
                                            .font(.custom("Marker Felt", size: 20))
                                            .fontWeight(.light)
                                            .opacity(0.85)
                                            .strikethrough(task.isCompleted)
                                            .onTapGesture {
                                                switch currentFlow {
                                                case .flow0:
                                                    currentFlow = .flow1
                                                case .flow1:
                                                    currentFlow = .flow2
                                                case .flow2:
                                                    currentFlow = .flow3
                                                case .flow3:
                                                    currentFlow = .flow4
                                                case .flow4:
                                                    currentFlow = .flow5
                                                case .flow5:
                                                    currentFlow = .flow6
                                                case .flow6:
                                                    currentFlow = .flow7
                                                case .flow7:
                                                    currentFlow = .flow8
                                                case .flow8:
                                                    currentFlow = .flow9
                                                case .flow9:
                                                    currentFlow = .flow10
                                                case .flow10:
                                                    currentFlow = .flow11
                                                case .flow11:
                                                    currentFlow = .flow12
                                                case .flow12:
                                                    currentFlow = .flow13
                                                case .flow13:
                                                    currentFlow = .flow14
                                                case .flow14:
                                                    currentFlow = .flow15
                                                case .flow15:
                                                    currentFlow = .flow16
                                                case .flow16:
                                                    currentFlow = .flow17
                                                case .flow17:
                                                    currentFlow = .flow18
                                                case .flow18:
                                                    currentFlow = .flow19
                                                case .flow19:
                                                    currentFlow = .flow20
                                                case .flow20:
                                                    currentFlow = .flow21
                                                case .flow21:
                                                    currentFlow = .flow22
                                                case .flow22:
                                                    currentFlow = .flow23
                                                case .flow23:
                                                    currentFlow = .flow24
                                                case .flow24:
                                                    currentFlow = .flow25
                                                case .flow25:
                                                    currentFlow = .flow25
                                                case .flow26:
                                                    currentFlow = .flow27
                                                case .flow27:
                                                    currentFlow = .flow28
                                                case .flow28:
                                                    currentFlow = .flow29
                                                case .flow29:
                                                    currentFlow = .flow30
                                                case .flow30:
                                                    currentFlow = .flow30
                                                }
                                                handleFlowChange()
                                                withAnimation {
                                                    viewModel.completeTask(task)
                                                }
                                            }
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 5)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        Spacer()
                                    }
                                    .frame(height: 40, alignment: .topLeading)
                                } else {
                                    HStack {
                                        Text("")
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 8)
                                        Spacer()
                                    }
                                    .frame(height: 40, alignment: .topLeading)
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 0)
                    }
                }
                
                TabView {
                    PostView(viewModel: postViewModel)
                        .tabItem {
                            Label("Posts", systemImage: "square.and.pencil")
                        }
                    
                    DMsView(viewModel: dialogViewModel, viewModel_2: dmViewModel)
                        .tabItem {
                            Label("Chat", systemImage: "ellipsis.message.fill")
                        }
                        .navigationBarBackButtonHidden(true)
                    
                    
                }
            }
        }
    }
    
    private func handleFlowChange() {
        switch currentFlow {
            // start
        case .flow0:
            print("dummy")
            // 1). Find the hate comments on your new post
        case .flow1:
            postViewModel.addPost(username: "beautyjasmine", caption: "My fav eye product", location: "Home", postImage: "post1", profileImage: "Jasmine", initialLikes: 3452390, commentUser: "ShadowLurker", commentText: "Even a monkey have a better lip than you")
            // 2). Talk to Rose about the hate comments
        case .flow2:
            dmViewModel.addDM(.rose)
            // 3). You have to click the stalker account
        case .flow3:
            postViewModel.addPost(username: "ShadowLurker", caption: "Caught off guard without the filters and glam. Recognize this place? Of course you do", location: "Salon", postImage: "candid", profileImage: "Stalker", initialLikes: 5, commentUser: "user123", commentText: "Wait, is that Jasmine?")
            postViewModel.addPost(username: "ShadowLurker", caption: "Photoshop is my best friend’, she says. Can’t hide the truth forever, can you?", location: "Home", postImage: "photoshop", profileImage: "Stalker", initialLikes: 23, commentUser: "robertyy", commentText: "lmaoo")
            postViewModel.addPost(username: "ShadowLurker", caption: "Once an asshole, always an asshole.", location: "Studio", postImage: "rude_talk", profileImage: "Stalker", initialLikes: 47, commentUser: "thiores", commentText: "I love drama")
            // 4). Connecting clues
        case .flow4:
            print("dummy")
           //  5). Talk to Stephanie
        case .flow5:
            postViewModel.addPost(username: "stephaniejenn", caption: "Love you always James <3", location: "Love Planet", postImage: "boyfriend", profileImage: "Stephanie", initialLikes: 12357, commentUser: "laura88", commentText: "Like a love bird")
            dmViewModel.addDM(.steph)
           // 6). Talk to Rose
        case .flow6:
            dmViewModel.addDM(.rose)
            // 7). Find out Jasmine’s past relationship
        case .flow7:
            print("dummy")
            // 8). Find out the motives
        case .flow8:
            print("dummy")
           //  9). Chat with the stalker
        case .flow9:
            dmViewModel.addDM(.stalker)
           // 10). Examine the house photo.
        case .flow10:
            print("dummy")
           // 11). Eliminate the suspect
        case .flow11:
            print("dummy")
           // 12). Block the stalker
        case .flow12:
            print("dummy")
           // 13). Chat with police.
        case .flow13:
            print("dummy")
           // 14). Chat with Rose
        case .flow14:
            dmViewModel.addDM(.rose)
           // 15). Logged out from Rose phone
        case .flow15:
            print("dummy")
            // 16). Chat with Natalie
        case .flow16:
            dmViewModel.addDM(.natalie)
          //  17). Seeing comments in Natalie’s post
        case .flow17:
            postViewModel.addPost(username: "nataliebert", caption: "Found this cute cafe", location: "Bunny Cafe", postImage: "natalie_cafe", profileImage: "Natalie", initialLikes: 21678, commentUser: "rhiona", commentText: "Another copy of Jasmine..")
          //  18). Reassure Natalie
        case .flow18:
            dmViewModel.addDM(.natalie)
           // 19). Find out the motives
        case .flow19:
            print("dummy")
           // 20). Open image in DM & post it in feed.
        case .flow20:
            postViewModel.addPost(username: "beautyjasmine", caption: "A new start with Van Cleef", location: "Paris", postImage: "post2", profileImage: "Natalie", initialLikes: 976367, commentUser: "fany123", commentText: "So beautiful as always")
           // 21). Secure even bigger contract
        case .flow21:
            print("dummy")
          //  22). Open DM from fans.
        case .flow22:
            dmViewModel.addDM(.rose)
           // 23). Unblock the stalker
        case .flow23:
            print("dummy")
           // 24). Check stalker's latest post
        case .flow24:
            postViewModel.addPost(username: "ShadowLurker", caption: "Want your face wrecked like a test subject? Use this crappy product! Only idiots try it.", location: "Lab science", postImage: "toxic_makeup", profileImage: "Stalker", initialLikes: 2138, commentUser: "viral.news", commentText: "You can't trust her anymore")
           // 25). Answer journalists’ questions
        case .flow25:
            print("dummy")
           // 26). Chat with stalker
        case .flow26:
            dmViewModel.addDM(.stalker)
            //  27). Examine the voice note and call
        case .flow27:
            print("dummy")
            // 28). Fill out cards in relationship board
        case .flow28:
            print("dummy")
            //  29). Pick a suspect and report to the police
        case .flow29:
            print("dummy")
          // done
        case .flow30:
            print("dummy")
        }
    }
}


// Preview
struct TaskView_Previews: PreviewProvider {
    static var previews: TaskView {
        TaskView()
    }
}
