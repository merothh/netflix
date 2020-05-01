.class Lo/TouchCalibration$TaskDescription$1;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TouchCalibration$TaskDescription;-><init>(Lo/TouchCalibration;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZLo/NanoAppInstanceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BrightnessChangeEvent;

.field final synthetic c:Lo/TouchCalibration$TaskDescription;

.field final synthetic d:Lo/TouchCalibration;


# direct methods
.method constructor <init>(Lo/TouchCalibration$TaskDescription;Lo/TouchCalibration;Lo/BrightnessChangeEvent;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lo/TouchCalibration$TaskDescription$1;->c:Lo/TouchCalibration$TaskDescription;

    iput-object p2, p0, Lo/TouchCalibration$TaskDescription$1;->d:Lo/TouchCalibration;

    iput-object p3, p0, Lo/TouchCalibration$TaskDescription$1;->a:Lo/BrightnessChangeEvent;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$1;->c:Lo/TouchCalibration$TaskDescription;

    invoke-static {v0}, Lo/TouchCalibration$TaskDescription;->c(Lo/TouchCalibration$TaskDescription;)Lo/HdmiTimerRecordSources;

    move-result-object v0

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$1;->c:Lo/TouchCalibration$TaskDescription;

    invoke-static {v0}, Lo/TouchCalibration$TaskDescription;->d(Lo/TouchCalibration$TaskDescription;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 135
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$1;->c:Lo/TouchCalibration$TaskDescription;

    invoke-static {v0}, Lo/TouchCalibration$TaskDescription;->d(Lo/TouchCalibration$TaskDescription;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->a()V

    .line 136
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$1;->c:Lo/TouchCalibration$TaskDescription;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/TouchCalibration$TaskDescription;->a(Lo/TouchCalibration$TaskDescription;Z)Z

    .line 138
    iget-object v0, p0, Lo/TouchCalibration$TaskDescription$1;->a:Lo/BrightnessChangeEvent;

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    return-void
.end method
