.class final Lo/PendingTransactionActions$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/PendingTransactionActions$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PendingTransactionActions$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo/PendingTransactionActions$ActionBar;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/PendingTransactionActions$Application;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    return-void
.end method

.method private static d(Lo/SyncActivityTooManyDeletes;)Lo/PendingTransactionActions$Application;
    .locals 2

    .line 447
    new-instance v0, Lo/PendingTransactionActions$Application;

    invoke-static {}, Lo/CrossProfileApps;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/PendingTransactionActions$Application;-><init>(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method a(Lo/SyncActivityTooManyDeletes;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-static {p1}, Lo/PendingTransactionActions$ActionBar;->d(Lo/SyncActivityTooManyDeletes;)Lo/PendingTransactionActions$Application;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b()I
    .locals 1

    .line 435
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method c()V
    .locals 1

    .line 439
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method c(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    new-instance v1, Lo/PendingTransactionActions$Application;

    invoke-direct {v1, p1, p2}, Lo/PendingTransactionActions$Application;-><init>(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method e()Lo/PendingTransactionActions$ActionBar;
    .locals 3

    .line 443
    new-instance v0, Lo/PendingTransactionActions$ActionBar;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lo/PendingTransactionActions$ActionBar;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method e(Lo/SyncActivityTooManyDeletes;)Z
    .locals 1

    .line 427
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-static {p1}, Lo/PendingTransactionActions$ActionBar;->d(Lo/SyncActivityTooManyDeletes;)Lo/PendingTransactionActions$Application;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/PendingTransactionActions$Application;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lo/PendingTransactionActions$ActionBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
