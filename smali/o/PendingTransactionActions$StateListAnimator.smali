.class Lo/PendingTransactionActions$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Lo/SyncActivityTooManyDeletes;

.field final synthetic b:Lo/PendingTransactionActions;


# direct methods
.method constructor <init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lo/PendingTransactionActions$StateListAnimator;->b:Lo/PendingTransactionActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lo/PendingTransactionActions$StateListAnimator;->a:Lo/SyncActivityTooManyDeletes;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 374
    iget-object v0, p0, Lo/PendingTransactionActions$StateListAnimator;->b:Lo/PendingTransactionActions;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lo/PendingTransactionActions$StateListAnimator;->b:Lo/PendingTransactionActions;

    iget-object v1, v1, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    iget-object v2, p0, Lo/PendingTransactionActions$StateListAnimator;->a:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions$ActionBar;->e(Lo/SyncActivityTooManyDeletes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lo/PendingTransactionActions$StateListAnimator;->b:Lo/PendingTransactionActions;

    iget-object v2, p0, Lo/PendingTransactionActions$StateListAnimator;->a:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions;->a(Lo/SyncActivityTooManyDeletes;)V

    .line 379
    :cond_0
    iget-object v1, p0, Lo/PendingTransactionActions$StateListAnimator;->b:Lo/PendingTransactionActions;

    invoke-virtual {v1}, Lo/PendingTransactionActions;->d()V

    .line 380
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
