.class Lo/InMemoryDexClassLoader$TaskDescription;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InMemoryDexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lo/InMemoryDexClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/InMemoryDexClassLoader$Application;Ljava/lang/CharSequence;)V
    .locals 1

    .line 560
    new-instance v0, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;

    invoke-direct {v0, p1, p2}, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;-><init>(Lo/InMemoryDexClassLoader$Application;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
