.class final Lorg/chromium/base/task/ChoreographerTaskRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/chromium/base/task/SingleThreadTaskRunner;


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/base/task/ChoreographerTaskRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public initNativeTaskRunner()V
    .locals 0

    return-void
.end method

.method public postDelayedTask(Ljava/lang/Runnable;J)V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/chromium/base/task/ChoreographerTaskRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v1, Lorg/chromium/base/task/ChoreographerTaskRunner$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/base/task/ChoreographerTaskRunner$2;-><init>(Lorg/chromium/base/task/ChoreographerTaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method
