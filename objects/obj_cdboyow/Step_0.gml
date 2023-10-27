randomize();
x=(xx-2)+random(4)
y=(yy-2)+random(4)
image_alpha-=0.025 * global.delta_multiplier
if image_alpha=0 {
    instance_destroy();
}

