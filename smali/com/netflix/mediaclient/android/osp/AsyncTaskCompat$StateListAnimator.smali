.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final b:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

.field final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


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

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$StateListAnimator;->b:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 494
    iput-object p2, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$StateListAnimator;->d:[Ljava/lang/Object;

    return-void
.end method
