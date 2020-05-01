.class Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InMemoryDexClassLoader$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/InMemoryDexClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/CharSequence;

.field private c:Lo/InMemoryDexClassLoader$Application;


# direct methods
.method constructor <init>(Lo/InMemoryDexClassLoader$Application;Ljava/lang/CharSequence;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;->c:Lo/InMemoryDexClassLoader$Application;

    .line 549
    iput-object p2, p0, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public c()Lo/InMemoryDexClassLoader;
    .locals 2

    .line 554
    iget-object v0, p0, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;->c:Lo/InMemoryDexClassLoader$Application;

    invoke-static {v0, v1}, Lo/InMemoryDexClassLoader;->d(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;)Lo/InMemoryDexClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lo/InMemoryDexClassLoader$TaskDescription$StateListAnimator;->c()Lo/InMemoryDexClassLoader;

    move-result-object v0

    return-object v0
.end method
