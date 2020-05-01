.class Lorg/chromium/net/JavaCronetEngine$1;
.super Ljava/lang/Object;
.source "JavaCronetEngine.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/JavaCronetEngine;


# direct methods
.method constructor <init>(Lorg/chromium/net/JavaCronetEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/net/JavaCronetEngine$1;->this$0:Lorg/chromium/net/JavaCronetEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/JavaCronetEngine$1$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/net/JavaCronetEngine$1$1;-><init>(Lorg/chromium/net/JavaCronetEngine$1;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
