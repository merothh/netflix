.class Lo/GeofenceHardwareImpl$StateListAnimator;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/LegacyFaceDetectMapper;",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/GeofenceHardwareImpl;

.field private final c:Lo/HdmiTimerRecordSources;

.field private d:Lcom/facebook/common/util/TriState;


# direct methods
.method public constructor <init>(Lo/GeofenceHardwareImpl;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->a:Lo/GeofenceHardwareImpl;

    .line 64
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 65
    iput-object p3, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    .line 66
    sget-object p1, Lcom/facebook/common/util/TriState;->c:Lcom/facebook/common/util/TriState;

    iput-object p1, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->d:Lcom/facebook/common/util/TriState;

    return-void
.end method


# virtual methods
.method protected bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 57
    check-cast p1, Lo/LegacyFaceDetectMapper;

    invoke-virtual {p0, p1, p2}, Lo/GeofenceHardwareImpl$StateListAnimator;->c(Lo/LegacyFaceDetectMapper;I)V

    return-void
.end method

.method protected c(Lo/LegacyFaceDetectMapper;I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->d:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->c:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 73
    invoke-static {p1}, Lo/GeofenceHardwareImpl;->c(Lo/LegacyFaceDetectMapper;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->d:Lcom/facebook/common/util/TriState;

    .line 77
    :cond_0
    iget-object v0, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->d:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->e:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lo/GeofenceHardwareImpl$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void

    .line 82
    :cond_1
    invoke-static {p2}, Lo/GeofenceHardwareImpl$StateListAnimator;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->d:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->d:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 84
    iget-object p2, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->a:Lo/GeofenceHardwareImpl;

    invoke-virtual {p0}, Lo/GeofenceHardwareImpl$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    iget-object v1, p0, Lo/GeofenceHardwareImpl$StateListAnimator;->c:Lo/HdmiTimerRecordSources;

    invoke-static {p2, p1, v0, v1}, Lo/GeofenceHardwareImpl;->a(Lo/GeofenceHardwareImpl;Lo/LegacyFaceDetectMapper;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lo/GeofenceHardwareImpl$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method
