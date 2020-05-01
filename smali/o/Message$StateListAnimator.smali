.class Lo/Message$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/Message$Activity;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field e:Z


# direct methods
.method constructor <init>(IZLo/Message$Activity;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/Message$StateListAnimator;->a:Ljava/lang/ref/WeakReference;

    .line 170
    iput p1, p0, Lo/Message$StateListAnimator;->b:I

    .line 171
    iput-boolean p2, p0, Lo/Message$StateListAnimator;->e:Z

    return-void
.end method


# virtual methods
.method b(Lo/Message$Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lo/Message$StateListAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
