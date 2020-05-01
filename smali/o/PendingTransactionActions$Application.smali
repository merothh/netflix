.class final Lo/PendingTransactionActions$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/Executor;

.field final e:Lo/SyncActivityTooManyDeletes;


# direct methods
.method constructor <init>(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    .line 463
    iput-object p2, p0, Lo/PendingTransactionActions$Application;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 468
    instance-of v0, p1, Lo/PendingTransactionActions$Application;

    if-eqz v0, :cond_0

    .line 469
    check-cast p1, Lo/PendingTransactionActions$Application;

    .line 470
    iget-object v0, p0, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    iget-object p1, p1, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 477
    iget-object v0, p0, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
