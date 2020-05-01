.class public Lo/SubmitInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SubmitInfo$Activity;
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
.field private final b:I

.field private final c:I

.field private final d:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/InputDeviceIdentifier;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;IIZ)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 45
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/SubmitInfo;->d:Lo/InputDeviceIdentifier;

    .line 46
    iput p2, p0, Lo/SubmitInfo;->b:I

    .line 47
    iput p3, p0, Lo/SubmitInfo;->c:I

    .line 48
    iput-boolean p4, p0, Lo/SubmitInfo;->e:Z

    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 4
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

    .line 56
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/SubmitInfo;->e:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/SubmitInfo;->d:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lo/SubmitInfo;->d:Lo/InputDeviceIdentifier;

    new-instance v1, Lo/SubmitInfo$Activity;

    iget v2, p0, Lo/SubmitInfo;->b:I

    iget v3, p0, Lo/SubmitInfo;->c:I

    invoke-direct {v1, p1, v2, v3}, Lo/SubmitInfo$Activity;-><init>(Lo/BrightnessChangeEvent;II)V

    invoke-interface {v0, v1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :goto_0
    return-void
.end method
