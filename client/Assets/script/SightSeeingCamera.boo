import UnityEngine

class SightSeeingCamera (MonoBehaviour): 
  _dist = 0.0f
  _tick = 0.0f
  _totalTime = 30.0f
  _angleX = 10.0f

  def Awake():
    _dist = Vector3.Distance(transform.position, Vector3.zero)

  def Start():
    pass

  def Update():
    _tick += Time.deltaTime
    rotate_camera()
    lookat_camera()




  def rotate_camera():
    d = Mathf.Cos(Mathf.Deg2Rad * _angleX) * _dist
    y = Mathf.Sin(Mathf.Deg2Rad * _angleX) * _dist
    angleY = Mathf.Deg2Rad * _tick / _totalTime * 360.0f
    x = Mathf.Cos(angleY) * d
    z = Mathf.Sin(angleY) * d
    transform.position = Vector3(x, y, z)

  def lookat_camera():
    transform.rotation = Quaternion.LookRotation(Vector3.zero - transform.position)
