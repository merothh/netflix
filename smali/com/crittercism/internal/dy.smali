.class public final Lcom/crittercism/internal/dy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/crittercism/internal/dx;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/dx;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
