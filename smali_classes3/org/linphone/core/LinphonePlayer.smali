.class public interface abstract Lorg/linphone/core/LinphonePlayer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/core/LinphonePlayer$State;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getState()Lorg/linphone/core/LinphonePlayer$State;
.end method

.method public abstract open(Ljava/lang/String;)I
.end method

.method public abstract pause()I
.end method

.method public abstract seek(I)I
.end method

.method public abstract start()I
.end method
