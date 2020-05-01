.class public interface abstract Lo/HdmiRecordListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiRecordListener$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FETCH_STATE:",
        "Lo/DisplayManagerGlobal;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lo/DisplayManagerGlobal;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)V"
        }
    .end annotation
.end method

.method public abstract b(Lo/DisplayManagerGlobal;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Lo/DisplayManagerGlobal;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;)Z"
        }
    .end annotation
.end method

.method public abstract d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/DisplayManagerGlobal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")TFETCH_STATE;"
        }
    .end annotation
.end method

.method public abstract d(Lo/DisplayManagerGlobal;Lo/HdmiRecordListener$StateListAnimator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;",
            "Lo/HdmiRecordListener$StateListAnimator;",
            ")V"
        }
    .end annotation
.end method
