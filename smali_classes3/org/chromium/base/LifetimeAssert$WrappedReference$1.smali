.class Lorg/chromium/base/LifetimeAssert$WrappedReference$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/LifetimeAssert$WrappedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lorg/chromium/base/LifetimeAssert$WrappedReference$1;->setDaemon(Z)V

    .line 84
    invoke-virtual {p0}, Lorg/chromium/base/LifetimeAssert$WrappedReference$1;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$WrappedReference;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/LifetimeAssert$WrappedReference;

    .line 93
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$WrappedReference;->access$100()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-boolean v1, v0, Lorg/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    if-nez v1, :cond_2

    const-string v1, "Object of type %s was GC\'ed without cleanup. Refer to \"Caused by\" for where object was created."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 95
    iget-object v4, v0, Lorg/chromium/base/LifetimeAssert$WrappedReference;->mTargetClass:Ljava/lang/Class;

    .line 98
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    sget-object v2, Lorg/chromium/base/LifetimeAssert;->sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;

    if-eqz v2, :cond_1

    .line 100
    sget-object v2, Lorg/chromium/base/LifetimeAssert;->sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;

    invoke-interface {v2, v0, v1}, Lorg/chromium/base/LifetimeAssert$TestHook;->onCleaned(Lorg/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v2, Lorg/chromium/base/LifetimeAssert$LifetimeAssertException;

    iget-object v0, v0, Lorg/chromium/base/LifetimeAssert$WrappedReference;->mCreationException:Lorg/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2, v1, v0}, Lorg/chromium/base/LifetimeAssert$LifetimeAssertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 105
    :cond_2
    sget-object v1, Lorg/chromium/base/LifetimeAssert;->sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lorg/chromium/base/LifetimeAssert;->sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/chromium/base/LifetimeAssert$TestHook;->onCleaned(Lorg/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
