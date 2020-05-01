.class Lo/TouchCalibration$TaskDescription$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TouchCalibration$TaskDescription;-><init>(Lo/TouchCalibration;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZLo/NanoAppInstanceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TouchCalibration;

.field final synthetic c:Lo/TouchCalibration$TaskDescription;


# direct methods
.method constructor <init>(Lo/TouchCalibration$TaskDescription;Lo/TouchCalibration;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/TouchCalibration$TaskDescription$3;->c:Lo/TouchCalibration$TaskDescription;

    iput-object p2, p0, Lo/TouchCalibration$TaskDescription$3;->b:Lo/TouchCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/LegacyFaceDetectMapper;I)V
    .locals 4

    .line 114
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$3;->c:Lo/TouchCalibration$TaskDescription;

    .line 118
    invoke-static {v0}, Lo/TouchCalibration$TaskDescription;->e(Lo/TouchCalibration$TaskDescription;)Lo/NanoAppInstanceInfo;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v2

    iget-object v3, p0, Lo/TouchCalibration$TaskDescription$3;->c:Lo/TouchCalibration$TaskDescription;

    invoke-static {v3}, Lo/TouchCalibration$TaskDescription;->a(Lo/TouchCalibration$TaskDescription;)Z

    move-result v3

    .line 118
    invoke-interface {v1, v2, v3}, Lo/NanoAppInstanceInfo;->createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;

    move-result-object v1

    .line 117
    invoke-static {v1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/GeofenceHardwareRequestParcelable;

    .line 114
    invoke-static {v0, p1, p2, v1}, Lo/TouchCalibration$TaskDescription;->b(Lo/TouchCalibration$TaskDescription;Lo/LegacyFaceDetectMapper;ILo/GeofenceHardwareRequestParcelable;)V

    return-void
.end method
