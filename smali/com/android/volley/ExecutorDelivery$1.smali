.class Lcom/android/volley/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$1;->this$0:Lcom/android/volley/ExecutorDelivery;

    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
