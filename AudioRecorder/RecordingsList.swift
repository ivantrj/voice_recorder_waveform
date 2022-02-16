//
//  RecordingsList.swift
//  AudioRecorder
//
//  Created by Ivan Trajanovski on 2022. 02. 16..
//

import SwiftUI

struct RecordingsList: View {
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        List {
            ForEach(audioRecorder.recordings, id: \.createdAt) { recording in
                RecordingRow(audioURL: recording.fileUrl)
            }
        }
    }
    
    struct RecordingsList_Previews: PreviewProvider {
        static var previews: some View {
            RecordingsList(audioRecorder: AudioRecorder())
        }
    }
    
    struct RecordingRow: View {
        var audioURL: URL
        
        var body: some View {
            HStack {
                Text("\(audioURL.lastPathComponent)")
                Spacer()
            }
        }
    }
}
