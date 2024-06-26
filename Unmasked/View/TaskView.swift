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
        case .flow0:
            print("dummy")
        case .flow1:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow2:
            dmViewModel.addDM(.rose)
        case .flow3:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow4:
            print("dummy")
        case .flow5:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow6:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow7:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow8:
            dmViewModel.addDM(.rose)
        case .flow9:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow10:
            dmViewModel.addDM(.rose)
        case .flow11:
            dmViewModel.addDM(.rose)
        case .flow12:
            dmViewModel.addDM(.rose)
        case .flow13:
            dmViewModel.addDM(.rose)
        case .flow14:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow15:
            dmViewModel.addDM(.rose)
        case .flow16:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow17:
            dmViewModel.addDM(.rose)
        case .flow18:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow19:
            <#code#>
        case .flow20:
            <#code#>
        case .flow21:
            <#code#>
        case .flow22:
            <#code#>
        case .flow23:
            <#code#>
        case .flow24:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow25:
            <#code#>
        case .flow26:
            postViewModel.addPost(username: "beautyjasmine", caption: "ashbdja", location: "absdk", postImage: "ash", profileImage: "ksajdb", initialLikes: 123, commentUser: "jd", commentText: "kjsdbs")
        case .flow27:
            <#code#>
        case .flow28:
            <#code#>
        case .flow29:
            <#code#>
        case .flow30:
            <#code#>
        }
    }
}


// Preview
struct TaskView_Previews: PreviewProvider {
    static var previews: TaskView {
        TaskView()
    }
}
