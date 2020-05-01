.class public final Lio/realm/internal/async/RealmAsyncTaskImpl;
.super Ljava/lang/Object;
.source "RealmAsyncTaskImpl.java"

# interfaces
.implements Lio/realm/RealmAsyncTask;


# instance fields
.field private volatile isCancelled:Z

.field private final pendingTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final service:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/async/RealmAsyncTaskImpl;->isCancelled:Z

    iput-object p1, p0, Lio/realm/internal/async/RealmAsyncTaskImpl;->pendingTask:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lio/realm/internal/async/RealmAsyncTaskImpl;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method
