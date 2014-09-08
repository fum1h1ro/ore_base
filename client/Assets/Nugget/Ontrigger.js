function OnTriggerEnter (hit : Collider) {
Debug.Log("Hit");

if (hit.tag == "Player") {

Debug.Log("Player detected");
Application.LoadLevel (0);
}

}