#Scheduler

This is my first tool for GTANetwork. It's a simple Scheduler to execute specific tasks at specific times.

###What kind of things can you do:

	-Send a global message
	-Start/Stop/Restart a ressource
	-Trigger a custom event
	-Execute a process

###How it's works:

	1. Firstly, drag and drop "scheduler" directory in your resource folder.

	2. Then, put "schedules.xml" into your GTANetwork-server root folder.

		2.1 If you want to use the auto reboot, put "reboot.cmd" in your GTANetwork-server root folder.

	3. Now, how to configure the "schedules.xml":
```
<schedules>
  <job type="message" value="This message was sent by Scheduler!" time="00:50" /><!-- Send a global message-->
  <job type="process" value="reboot.cmd" time="01:11:00" /><!-- Execute a process-->
  <job type="ressource" value="speedometer" time="01:21" action="start" /><!-- Start a ressource-->
  <job type="ressource" value="speedometer" time="01:22" action="stop" /><!-- Stop a ressource-->
  <job type="ressource" value="speedometer" time="01:23" action="restart" /><!-- Restart a ressource-->
  <job type="event" value="myEvent" time="02:05" /><!-- Trigger a custom event-->
</schedules>
```

###Attributes:

	- type : Simply the type of the task
	- value : The value used by the task
	- time : Time to execute the task
	- action (optional): only for "resource" type, specify the action to do with the resource

To finish, add <resource src="scheduler" /> in "settings.xml"