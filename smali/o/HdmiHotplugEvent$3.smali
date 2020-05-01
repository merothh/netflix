.class Lo/HdmiHotplugEvent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HdmiRecordListener$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiHotplugEvent;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DisplayManagerGlobal;

.field final synthetic e:Lo/HdmiHotplugEvent;


# direct methods
.method constructor <init>(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/HdmiHotplugEvent$3;->e:Lo/HdmiHotplugEvent;

    iput-object p2, p0, Lo/HdmiHotplugEvent$3;->a:Lo/DisplayManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;I)V
    .locals 2

    .line 70
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkFetcher->onResponse"

    .line 71
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lo/HdmiHotplugEvent$3;->e:Lo/HdmiHotplugEvent;

    iget-object v1, p0, Lo/HdmiHotplugEvent$3;->a:Lo/DisplayManagerGlobal;

    invoke-virtual {v0, v1, p1, p2}, Lo/HdmiHotplugEvent;->e(Lo/DisplayManagerGlobal;Ljava/io/InputStream;I)V

    .line 74
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lo/HdmiHotplugEvent$3;->e:Lo/HdmiHotplugEvent;

    iget-object v1, p0, Lo/HdmiHotplugEvent$3;->a:Lo/DisplayManagerGlobal;

    invoke-static {v0, v1, p1}, Lo/HdmiHotplugEvent;->b(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/HdmiHotplugEvent$3;->e:Lo/HdmiHotplugEvent;

    iget-object v1, p0, Lo/HdmiHotplugEvent$3;->a:Lo/DisplayManagerGlobal;

    invoke-static {v0, v1}, Lo/HdmiHotplugEvent;->a(Lo/HdmiHotplugEvent;Lo/DisplayManagerGlobal;)V

    return-void
.end method
