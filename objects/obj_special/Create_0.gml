switch(obj_stats.specialroom) {
    case "soundtest":
        instance_create(0,0,obj_soundtest)
    break;
    default:
        instance_create(0,0,obj_chimpgame)
    break;
}
instance_destroy();

