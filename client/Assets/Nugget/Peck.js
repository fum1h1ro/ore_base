


function Start () {

animation["Peck"].layer = 2;
animation["Peck"].wrapMode = WrapMode.Once;
}

function Update () {

if (Input.GetButtonUp("Fire1")) {
animation.CrossFade("Peck");
}


}