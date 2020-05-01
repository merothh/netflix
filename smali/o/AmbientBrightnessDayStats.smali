.class public Lo/AmbientBrightnessDayStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AmbientBrightnessDayStats$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputDeviceIdentifier;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/AmbientBrightnessDayStats;->d:Lo/InputDeviceIdentifier;

    .line 27
    iput-object p2, p0, Lo/AmbientBrightnessDayStats;->c:Lo/InputDeviceIdentifier;

    return-void
.end method

.method static synthetic a(Lo/AmbientBrightnessDayStats;)Lo/InputDeviceIdentifier;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/AmbientBrightnessDayStats;->c:Lo/InputDeviceIdentifier;

    return-object p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 2
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

    .line 34
    new-instance v0, Lo/AmbientBrightnessDayStats$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lo/AmbientBrightnessDayStats$StateListAnimator;-><init>(Lo/AmbientBrightnessDayStats;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/AmbientBrightnessDayStats$1;)V

    .line 35
    iget-object p1, p0, Lo/AmbientBrightnessDayStats;->d:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v0, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
