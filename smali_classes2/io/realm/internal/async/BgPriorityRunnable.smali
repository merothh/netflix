.class public Lio/realm/internal/async/BgPriorityRunnable;
.super Ljava/lang/Object;
.source "BgPriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/realm/internal/async/BgPriorityRunnable;->runnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 34
    iget-object v0, p0, Lio/realm/internal/async/BgPriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    return-void
.end method
