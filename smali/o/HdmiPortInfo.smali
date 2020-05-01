.class public Lo/HdmiPortInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiPortInfo$Application;,
        Lo/HdmiPortInfo$StateListAnimator;,
        Lo/HdmiPortInfo$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lo/Camera;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lo/InputDeviceIdentifier;Lo/Camera;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/Camera;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/HdmiPortInfo;->a:Lo/InputDeviceIdentifier;

    .line 46
    iput-object p2, p0, Lo/HdmiPortInfo;->c:Lo/Camera;

    .line 47
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/HdmiPortInfo;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lo/HdmiPortInfo;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/HdmiPortInfo;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic b(Lo/HdmiPortInfo;)Lo/Camera;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/HdmiPortInfo;->c:Lo/Camera;

    return-object p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v3

    .line 55
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object v7

    .line 56
    new-instance v8, Lo/HdmiPortInfo$ActionBar;

    .line 57
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/HdmiPortInfo$ActionBar;-><init>(Lo/HdmiPortInfo;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Lo/GeofenceHardwareCallback;Lo/HdmiTimerRecordSources;)V

    .line 59
    instance-of v0, v7, Lo/GeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_0

    .line 60
    new-instance v6, Lo/HdmiPortInfo$Application;

    move-object v3, v7

    check-cast v3, Lo/GeofenceHardwareMonitorCallback;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, v8

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/HdmiPortInfo$Application;-><init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/GeofenceHardwareMonitorCallback;Lo/HdmiTimerRecordSources;Lo/HdmiPortInfo$3;)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v6, Lo/HdmiPortInfo$StateListAnimator;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v8, v0}, Lo/HdmiPortInfo$StateListAnimator;-><init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/HdmiPortInfo$3;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lo/HdmiPortInfo;->a:Lo/InputDeviceIdentifier;

    invoke-interface {v0, v6, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
