.class public interface abstract Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# virtual methods
.method public abstract add(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;J",
            "Lio/realm/internal/async/ArgumentsHolder;",
            ")",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;"
        }
    .end annotation
.end method

.method public abstract addObject(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lio/realm/RealmModel;",
            ">;J",
            "Lio/realm/internal/async/ArgumentsHolder;",
            ")",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;"
        }
    .end annotation
.end method
