.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;


# direct methods
.method varargs constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;",
            "[TData;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
