lazy val playSound = taskKey[Unit]("Play a sound when loading project")
playSound := {
  import scala.sys.process._
  "afplay /System/Library/Sounds/Glass.aiff" !
}
val playStartupSound: State => State = { s: State =>
  "playSound" :: s
}
onLoad in Global := {
  val old = (onLoad in Global).value
  val n = name.value
  if(n == "consums")
     playStartupSound.compose(old)
  else
    old
}


