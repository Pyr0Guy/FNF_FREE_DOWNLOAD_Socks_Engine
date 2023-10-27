var __b__;
__b__ = action_if_variable(gamerestart, true, 0);
if __b__
{
{
audio_stop_all();
game_restart();

action_message("boo!");
}
}
else
{
{
instance_destroy();

}
}
