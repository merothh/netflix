.class public Lo/ActivityRecognitionHardware;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/ActivityRecognitionHardware;->a:Lo/InputDeviceIdentifier;

    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Ljava/lang/Void;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 24
    new-instance v0, Lo/ActivityRecognitionHardware$4;

    invoke-direct {v0, p0, p1}, Lo/ActivityRecognitionHardware$4;-><init>(Lo/ActivityRecognitionHardware;Lo/BrightnessChangeEvent;)V

    .line 32
    iget-object p1, p0, Lo/ActivityRecognitionHardware;->a:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v0, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
