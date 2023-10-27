image_speed=0
image_index=0
y=61
weeks=3
sel=0
//song info
//failsafelol
var b;
for (b=0;b<weeks+1;b++) {
    songname[b,0]=""
    songname[b,1]=""
    difficulty[b]=""
}
songname[0,0]="i, robot"
songname[0,1]=""
difficulty[0]="easy"
songname[1,0]="summer"
songname[1,1]="stars"
difficulty[1]="easy"
songname[2,0]="girl next door"
//gamejack funnies
if obj_stats.playedw2=false {
    songname[2,1]="gameplay"
} else {
    songname[2,1]="gamejack"
}
difficulty[2]="normal"
songname[3,0]="twinkle"
songname[3,1]="tsunami"
difficulty[3]="normal"
songname[4,0]="morning"
songname[4,1]="rush"
difficulty[4]="normal"
