.class Lo/TypeReference$TaskDescription$4;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeReference$TaskDescription;-><init>(Lo/TypeReference;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:Lo/TypeReference;

.field final synthetic d:Lo/TypeReference$TaskDescription;


# direct methods
.method constructor <init>(Lo/TypeReference$TaskDescription;Lo/TypeReference;Z)V
    .locals 0

    .line 176
    iput-object p1, p0, Lo/TypeReference$TaskDescription$4;->d:Lo/TypeReference$TaskDescription;

    iput-object p2, p0, Lo/TypeReference$TaskDescription$4;->c:Lo/TypeReference;

    iput-boolean p3, p0, Lo/TypeReference$TaskDescription$4;->a:Z

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 179
    iget-object v0, p0, Lo/TypeReference$TaskDescription$4;->d:Lo/TypeReference$TaskDescription;

    invoke-static {v0}, Lo/TypeReference$TaskDescription;->d(Lo/TypeReference$TaskDescription;)Lo/HdmiTimerRecordSources;

    move-result-object v0

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lo/TypeReference$TaskDescription$4;->d:Lo/TypeReference$TaskDescription;

    invoke-static {v0}, Lo/TypeReference$TaskDescription;->a(Lo/TypeReference$TaskDescription;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->d()Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lo/TypeReference$TaskDescription$4;->a:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lo/TypeReference$TaskDescription$4;->d:Lo/TypeReference$TaskDescription;

    invoke-static {v0}, Lo/TypeReference$TaskDescription;->c(Lo/TypeReference$TaskDescription;)V

    :cond_0
    return-void
.end method
