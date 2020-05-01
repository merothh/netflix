.class Lorg/chromium/net/JavaCronetEngine$1$1;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/net/JavaCronetEngine$1;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/chromium/net/JavaCronetEngine$1;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/net/JavaCronetEngine$1$1;->this$1:Lorg/chromium/net/JavaCronetEngine$1;

    iput-object p2, p0, Lorg/chromium/net/JavaCronetEngine$1$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "JavaCronetEngine"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lorg/chromium/net/JavaCronetEngine$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
