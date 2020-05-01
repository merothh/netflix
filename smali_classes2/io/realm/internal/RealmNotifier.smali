.class public interface abstract Lio/realm/internal/RealmNotifier;
.super Ljava/lang/Object;
.source "RealmNotifier.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract completeAsyncObject(Lio/realm/internal/async/QueryUpdateTask$Result;)V
.end method

.method public abstract completeAsyncResults(Lio/realm/internal/async/QueryUpdateTask$Result;)V
.end method

.method public abstract completeUpdateAsyncQueries(Lio/realm/internal/async/QueryUpdateTask$Result;)V
.end method

.method public abstract isValid()Z
.end method

.method public abstract notifyCommitByLocalThread()V
.end method

.method public abstract notifyCommitByOtherThread()V
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract throwBackgroundException(Ljava/lang/Throwable;)V
.end method
