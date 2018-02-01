[Ivy]
161426C657DA19BE 3.20 #module
>Proto >Proto Collection #zClass
So0 StartDemo Big #zClass
So0 B #cInfo
So0 #process
So0 @TextInP .resExport .resExport #zField
So0 @TextInP .type .type #zField
So0 @TextInP .processKind .processKind #zField
So0 @AnnotationInP-0n ai ai #zField
So0 @MessageFlowInP-0n messageIn messageIn #zField
So0 @MessageFlowOutP-0n messageOut messageOut #zField
So0 @TextInP .xml .xml #zField
So0 @TextInP .responsibility .responsibility #zField
So0 @StartRequest f0 '' #zField
So0 @EndRequest f3 '' #zField
So0 @PushWFArc f1 '' #zField
So0 @StartRequest f2 '' #zField
So0 @EndTask f5 '' #zField
So0 @UserTask f10 '' #zField
So0 @PushWFArc f7 '' #zField
So0 @TkArc f4 '' #zField
>Proto So0 So0 StartDemo #zField
So0 f0 outLink start.ivp #txt
So0 f0 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f0 inParamDecl '<> param;' #txt
So0 f0 actionDecl 'com.axonivy.ivy.angularwfdemo.Data out;
' #txt
So0 f0 guid 161426C666BEF9DD #txt
So0 f0 requestEnabled true #txt
So0 f0 triggerEnabled false #txt
So0 f0 callSignature start() #txt
So0 f0 caseData businessCase.attach=true #txt
So0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
So0 f0 @C|.responsibility Everybody #txt
So0 f0 81 49 30 30 -21 17 #rect
So0 f0 @|StartRequestIcon #fIcon
So0 f3 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f3 template "angular\\index.html" #txt
So0 f3 337 49 30 30 0 15 #rect
So0 f3 @|EndRequestIcon #fIcon
So0 f1 expr out #txt
So0 f1 111 64 337 64 #arcP
So0 f2 outLink createTestTask.ivp #txt
So0 f2 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f2 inParamDecl '<> param;' #txt
So0 f2 actionDecl 'com.axonivy.ivy.angularwfdemo.Data out;
' #txt
So0 f2 guid 1614299C443ABC28 #txt
So0 f2 requestEnabled true #txt
So0 f2 triggerEnabled false #txt
So0 f2 callSignature createTestTask() #txt
So0 f2 persist false #txt
So0 f2 startName createTestTask #txt
So0 f2 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
So0 f2 caseData businessCase.attach=true #txt
So0 f2 showInStartList 1 #txt
So0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createTestTask.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
So0 f2 @C|.responsibility Everybody #txt
So0 f2 81 177 30 30 -51 17 #rect
So0 f2 @|StartRequestIcon #fIcon
So0 f5 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f5 433 177 30 30 0 15 #rect
So0 f5 @|EndIcon #fIcon
So0 f10 richDialogId com.axonivy.ivy.angularwfdemo.EnterData #txt
So0 f10 startMethod start(String,String) #txt
So0 f10 requestActionDecl '<String name, String country> param;' #txt
So0 f10 responseActionDecl 'com.axonivy.ivy.angularwfdemo.Data out;
' #txt
So0 f10 responseMappingAction 'out=in;
out.country=result.country;
out.name=result.name;
' #txt
So0 f10 outLinks "TaskA.ivp" #txt
So0 f10 taskData 'TaskA.DESC=<%\=com.axonivy.ivy.angularwfdemo.utils.RandomText.randomTaskDescription()%>
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=com.axonivy.ivy.angularwfdemo.utils.RandomText.randomTaskTitle()%>
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
So0 f10 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f10 216 170 112 44 0 -8 #rect
So0 f10 @|UserTaskIcon #fIcon
So0 f7 expr data #txt
So0 f7 outCond ivp=="TaskA.ivp" #txt
So0 f7 328 192 433 192 #arcP
So0 f4 expr out #txt
So0 f4 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f4 var in1 #txt
So0 f4 111 192 216 192 #arcP
>Proto So0 .type com.axonivy.ivy.angularwfdemo.Data #txt
>Proto So0 .processKind NORMAL #txt
>Proto So0 0 0 32 24 18 0 #rect
>Proto So0 @|BIcon #fIcon
So0 f0 mainOut f1 tail #connect
So0 f1 head f3 mainIn #connect
So0 f10 out f7 tail #connect
So0 f7 head f5 mainIn #connect
So0 f2 mainOut f4 tail #connect
So0 f4 head f10 in #connect
