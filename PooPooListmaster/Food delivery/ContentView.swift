//
//  ContentView.swift
//  Poo Poo list
//
//  Created by Abinaya Dinesh on 10/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PooPoo()
    }
}

struct PooPoo: View {
    @State var categoryIndex = 0
    @State var text = ""
    var body: some View {
        NavigationView {
            ZStack {
                VStack (){
                    Text("Learn about...")
                        .font(.title)
                        .foregroundColor(Color("mainfont"))
                    Text("disorders, workout, and treatments")
                        .padding(.top, 5)
                        .foregroundColor(.gray).zIndex(1)
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        VStack (spacing: 0){
//                            Text("disorders, workout, and treatments")
//                                .foregroundColor(.gray).zIndex(1)
                            
                        }
                        SearchBar(text: $text)
//                            .padding(.top, 30)
                    }
                    ScrollView(.vertical, showsIndicators: false){
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 30){
                                ForEach(0..<categories.count, id: \.self){data in
                                    Categories(data: data, index: $categoryIndex)
                                }
                            }
                        }
                        .padding(.top, 30)
                        
                        GridView(categoryIndex: self.categoryIndex, text: self.text)
                        Spacer()
                    }.padding(.top, 20)
                } // to scroll view
                .padding(.horizontal, 20)
            }
            
        }.navigationBarHidden(true)
        
        
    }
    
}

//seperate file
struct Categories: View {
    
    var data: Int
    @Binding var index: Int
    //    var categoryCount: Int = 0
    
    var body: some View{
        VStack(spacing: 8){
            Text(categories[data])
                .font(.system(size: 22))
                .fontWeight(index == data ? .bold : .none)
                .foregroundColor(Color(index == data ? "mainfont" : "subfont"))
            
            Capsule()
                .fill(Color("mainfont"))
                .frame(width: 30, height: 4)
                .opacity(index == data ? 1 : 0)
        }.onTapGesture {
            withAnimation {
                //                print(categoryCount)
                index = data
            }
            
        }
    }
}


struct Disorder: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    var title2: String
    var caused_by: String
    var title3: String
    var symptoms: String
    var title4: String
    var home_remedies: String
    var title5: String
    var check_out: String
    var title6: String
    var clinician_treatments: String
}

var categories = ["Disorders", "Workouts", "Treatment"]

var dData = [
    Disorder(title: "Irritable Bowel Syndrome", image: "3", description: "An intestinal disorder causing pain in the belly, gas, diarrhea, and constipation." , title2: "Caused By", caused_by:"IBS is caused by \n 1. stress in major life events, such as abuse \n 2.mental disorders \n 3. bacterial infections", title3: "Symptoms", symptoms: "Symptoms \n 1.abdominal pain \n 2. bloating \n 3. constipation and/or diarrhea ", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by: \n1. Working out, which relieves stress, depression, and anxiety and  stimulates regular intestinal contractions. \n2. Relaxing, or self care. Some examples are diaphragmatic/abdominal breathing (breathing exercises), progressive muscle relaxation, visualization/positive imagery. \n 3. Experimenting with fiber. Fiber helps ease some symptoms, including constipation, but can actually worsen other symptoms like cramping and gas. Doctors still recommend gradually eating more high-fiber foods over a few weeks.", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Squats \n 2. Glute Bridge \n 3. Yoga", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Constipation", image: "2", description: "An intestinal disorder causing pain in the belly, gas, diarrhea, and constipation." , title2: "Caused By", caused_by:"Constipation is mainly caused by \n 1.certain medications isuues \n 2.dehydration \n 3. lack of fiber in diet", title3: "Symptoms", symptoms: "Symptoms \n 1. lumpy/hards stools \n\n 2.strained bowel movement \n\n 3.passing fewer than three stool per week", title4: "Home Treatments", home_remedies:"Constipation may be cured at home by drinking more fluids, eating more high-fiber foods, and getting regular exercise. Using over-the-counter stool softeners and laxatives may also help.", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Walking \n 2. Running \n 3. Squats", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \n You should seek a doctor if you have severe, persistent abdominal pain and bloating, chronically can't pass stool, or are experiencing bleeding around the rectum. \n1.Laxatives/Suppositories \n2.Prescription medicine like Lactulose, Linaclotide, Lubiprostone. Your doctor may asses what to use, if necessary.  \n3. Biofeedback"
    ),
    Disorder(title: "Hemorrhoids", image: "1", description: "Swollen and inflamed veins in the rectum and anus that cause discomfort and bleeding." , title2: "Caused By", caused_by:"Hemmorrhoids is caused by \n 1. straining during bowel movement \n 2.obesity  \n 3. heavy lifting", title3: "Symptoms", symptoms: "Symptoms \n 1. constipation \n 2. pain in the rectum \n 3.pain while sitting due to anal discomfort", title4: "Home Treatments", home_remedies:"Hemorrhoids can be treated at home with diet modifications and laxatives. A high-fiber diet, ice packs, cold compress, witch hazel extract, and zinc oxide, along with stool softeners all prove to be helpful home remedies. ", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Glute Bridges \n 2.Yoga \n 3. Running/Jogging", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \n You should seek a doctor if you have severe, persistent abdominal pain and bloating, chronically can't pass stool, or are experiencing bleeding around the rectum. \n1.Laxatives/Suppositories \n2.Prescription medicine like Lactulose, Linaclotide, Lubiprostone. Your doctor may asses what to use, if necessary.  \n3. Biofeedback"
    ),
    Disorder(title: "Colitis", image: "3", description: "An inflammatory reaction in the colon, often autoimmune or infectious." , title2: "Caused By", caused_by:"Colitis is caused by \n 1. infections caused by a virus or parasite \n 2. food poisoning \n 3. lack of blood flow", title3: "Symptoms", symptoms: "Symptoms \n 1. diarrhea, often with blood or pus \n 2.abdominal pain/cramping \n 3. rectal bleeding while passing stool", title4: "Home Treatments", home_remedies:"\n1. Lifestyle changes which involve herbal medicine, exercise,and stress-reduction techniques such as tai chi and yoga. \n2. A healthier diet full of foods with soluble fiber.", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Yoga \n 2.Running \n 3.Squats", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \n1.Nonsteroidal anti-inflammatory drugs \n2. Immune system suppressors\n3. Steroids"
    ),
]

var wData = [
    Disorder(title: "Kegels", image: "4", description: "Kegel exercises strengthen the pelvic floor muscles, which support the uterus, bladder, small intestine and rectum. You can do Kegel exercises, also known as pelvic floor muscle training, just about anytime." , title2: "How to", caused_by:" To do Kegels, imagine you are sitting on a marble and tighten your pelvic muscles as if you're lifting the marble. Try it for three seconds at a time, then relax for a count of three.", title3: "Tutorial", symptoms: "https://youtu.be/7C8uoq98x2A", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Squats", image: "6", description: "Squats are a functional exercise that benefit your joint and muscle health, as well as your posture." , title2: "How to", caused_by:" Initiate the movement by sending the hips back as if you’re sitting back into an invisible chair. Bend knees to lower down as far as possible with chest lifted in a controlled movement. Keep lower back neutral. Press through heels to stand back up to starting position. Repeat.", title3: "Tutorial", symptoms: " https://youtu.be/otzWCWpuW-A", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Squats treats: \n 1.Irritable Bowel Syndrome", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Glute Bridges", image: "7", description: "This is used for stretch purposes, rather than an active seat strengthening exercise. Adding resistance bands or weights can be helpful." , title2: "How to", caused_by:"Bend knees and place feet flat on ground. Lift hips up to maximum level, lifting entire back up off ground. Think of extending knees forward toward wall in front of you so you can lengthen hips. Lift high and hold. Use your hips to bring the body back down, and repeat for 10-15 repetitions.", title3: "Tutorial", symptoms: "https://youtu.be/wPM8icPu6H8", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Hip Thrusts", image: "8", description: "Similar to a glute bridge, though your shoulders raised." , title2: "How to", caused_by:"Sit on the ground with a bench behind you, bending your knees so your feet are planted on the ground and holding a barbell resting below your hips. If you have a padded bar, or anything you can slip in between the bar and your body, it will go a long way to making the exercise more comfortable. Lean back so your shoulders are on the bench and position the bar above your hips. Drive your hips up lifting the bar. In the top position your knees should be bent at 90° and your shoulders should be near the top of the bench, with your body forming a straight line between them. Pause at the top of the lift and squeeze your glutes, then lower your hips slowly. ", title3: "Tutorial", symptoms: "https://youtu.be/Zp26q4BY5HE", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Walking", image: "10", description: "The activity of taking walks for exercise or pleasure." , title2: "How to", caused_by:"Walking at a leisurely and relaxed paced is proven to help the most with recovery.", title3: "Tutorial", symptoms: "https://youtu.be/945GB6r2o_Y", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Jogging", image: "9", description: "The activity of running on foot, usually at longer distances." , title2: "How to", caused_by:"Move your arms and legs in coordination to travel distances at a faster pace. Choose comfortable distances and be cautious of eating too much food beforehand (which may cause stomach cramps). Running at a slow, manageable pace is proven to help with recovery the most. ", title3: "Tutorial", symptoms: "https://youtu.be/m-P8ge77FY4", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
    Disorder(title: "Yoga", image: "5", description: "A systematic practice of physical exercise, breath control, relaxation, diet control, and positive thinking and meditation aimed at developing harmony in the body, mind, and environment" , title2: "How to", caused_by:"Yoga consists of several different poses that work to calm and stretch different areas of the body. Use the video for guidance through these exercises. ", title3: "Tutorial", symptoms: "https://youtu.be/2aEceax_be4", title4: "Treats", home_remedies:"Tip: search for each one in 'Disorders' for more info! Kegels treats: \n 1.Pelvic Floor Disorder \n 2. Urinary incontinence \n 3. other pelvic floor issues", title5: "", check_out: "", title6: "", clinician_treatments:""
    ),
]

var tData = [
    Disorder(title: "Biofeedback", image: "11", description: "a technique you can use to learn to control some of your body's functions, such as bowel movements. During biofeedback, you're connected to electrical sensors that help you receive information about your body" , title2: "Extra Info/Tutorial", caused_by:"https://www.youtube.com/watch?v=Ysdaa_8x8H0", title3: "Average Costs", symptoms: "Costs for biofeedback can vary considerably, often ranging from $35 to $85 per biofeedback session.", title4: "Number of Visits to Doctor", home_remedies:"Biofeedback therapy is an outpatient service and patients are seen for up to four or five sessions at four to six weekly intervals with the same therapist", title5: "Side Effects", check_out: "Biofeedback can help you feel more in control of your health and wellness. It is noninvasive, and there are no side effects or potential complications. ", title6: "Treats", clinician_treatments:"Tip: Search each of these in 'Disorders' for more about them! \n 1. Irritable Bowel Syndrome \n 2. Pelvic Floor Disorder \n 3. Constipation"
    ),
    Disorder(title: "Cognitive Behavioral Therapy", image: "12", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Psychotherapy", image: "13", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Laxatives", image: "14", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Suppositories", image: "11", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Rubber Band Ligation", image: "12", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Antibiotics", image: "13", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Cauterization", image: "14", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Sclerotherapy", image: "11", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Stapled Hemorrhoidopexy", image: "12", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),
    Disorder(title: "Antidepressants", image: "13", description: "this is the description for ibs" , title2: "Caused By", caused_by:"ibs is caused by \n 1. this \n 2. this \n 3. this", title3: "Symptoms", symptoms: "symptom1, symptom2, symptom3", title4: "Home Treatments", home_remedies:"Generally, IBS can be cured at home by", title5: "Workouts", check_out: "Tip: Search each of these in 'Workouts' for more about them! \n 1. Workout1 \n 2. Workout 2 \n 3. Workout 3", title6: "Clinician Treatments", clinician_treatments:"Tip: Search each of these in 'Treatments' for more about them! \nBiofeedback, etc."
    ),


    
]

