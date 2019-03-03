# sound-design-workshop
# Introduction
Proposed, designed, and conducted a sound design workshop with 24 5th and 6th graders at R F Kennedy Elementary. This is the code I wrote to teach the concept of Granular Sampling. Every player (p1, p2, etc.) has a separate code file which loads a sample and defines 5 parameters to modify the sample with. The splitting of samples was done to show how a Laptop Orchestra is conducted. Initially, every group of students would be one "player" and play a sample. We would then move in sequence through all groups around the room and hear what each "player" sounds like. We would then follow a musical score to control when a player starts and stops thus, recreating a song. The idea was to recreate "Jellyfish Jam" from *Spongebob* and encourage students to design cool unique sounds from familiar sounds. For instance, depending on the sample, a lower playback rate (0.1) creates a bass sound while a higher playback rate (6) creates a shutterfly sound. 

# Files
## Samples
* This contains all the audio files related to the recreation of *Spongebob's* "Jellyfish Jam". The piano synths were edited out of the original and cover of the original. 
* The samples are named according to what they sound like.

## Code
* "load_samples_synth.scd": loads samples, synth definition, and Pbindefs.
  * The paths need to be changed to where the samples reside on your local machine.
  * This file needs to be run once. Make sure to boot the server first (CTRL + B).
  * This file loads the audio files through a synth definition which plays the file through a buffer.
  * The Pbindefs make the files modifiable. Each Pbindef has 5 parameters to play around with: dur, rel, rate, startPos, amp.
 
* "p1", "p2", etc: are Pbindefs for each sample.
  * Seperate files were created to assign to duos and trios of students.
  * Either all groups modify and play together or they work seperately and then share what they produced.
  
* "score.scd": contains a simple score designed around the song "Jellyfish Jam". To listen to what this sounds, play "run.wav".

## Worksheets
* "student_sheet": was the sheet provided to students. The 5 questions were to guide them to understand what each parameter did. A cheat sheet was added too so, they would know what was expected of them and not have to memorize commands.
* "instructor_sheet": was the sheet provided to my peers to help them aid the students.

# Inspiration
All the work we do at [Santa Clara Laptop Orchestra (SCLOrk)](https://www.youtube.com/watch?v=UorZXvhU6uI) and [Dr. Bruno Ruviaro] (https://github.com/brunoruviaro) inspired the creation of this workshop. A year ago I knew nothing about music, let alone sound design. Now, I can conduct a workshop to introduce young minds to the magic I had and continue to have the privelege to experience for over a year.

