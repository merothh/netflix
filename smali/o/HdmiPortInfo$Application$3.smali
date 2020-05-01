.class Lo/HdmiPortInfo$Application$3;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiPortInfo$Application;-><init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/GeofenceHardwareMonitorCallback;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/HdmiPortInfo;

.field final synthetic c:Lo/HdmiPortInfo$Application;


# direct methods
.method constructor <init>(Lo/HdmiPortInfo$Application;Lo/HdmiPortInfo;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/HdmiPortInfo$Application$3;->c:Lo/HdmiPortInfo$Application;

    iput-object p2, p0, Lo/HdmiPortInfo$Application$3;->b:Lo/HdmiPortInfo;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 348
    iget-object v0, p0, Lo/HdmiPortInfo$Application$3;->c:Lo/HdmiPortInfo$Application;

    invoke-static {v0}, Lo/HdmiPortInfo$Application;->a(Lo/HdmiPortInfo$Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lo/HdmiPortInfo$Application$3;->c:Lo/HdmiPortInfo$Application;

    invoke-virtual {v0}, Lo/HdmiPortInfo$Application;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    :cond_0
    return-void
.end method
