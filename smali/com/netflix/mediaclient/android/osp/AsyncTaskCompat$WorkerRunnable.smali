.class abstract Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;-><init>()V

    return-void
.end method
