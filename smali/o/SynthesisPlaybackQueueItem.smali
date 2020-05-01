.class public abstract Lo/SynthesisPlaybackQueueItem;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAreAllFieldsValid()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getShowValidationState()Z
.end method

.method public abstract getViewType()Lcom/netflix/cl/model/AppView;
.end method

.method public abstract setShowValidationState(Z)V
.end method

.method public abstract showValidationStateIfNotEmpty()V
.end method
