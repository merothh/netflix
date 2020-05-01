.class Lo/PendingTransactionActions$Activity;
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
    name = "Activity"
.end annotation


# instance fields
.field final synthetic d:Lo/PendingTransactionActions;

.field private final e:Lo/SyncActivityTooManyDeletes;


# direct methods
.method constructor <init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lo/PendingTransactionActions$Activity;->e:Lo/SyncActivityTooManyDeletes;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    iget-object v0, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    iget-object v1, v1, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    iget-object v2, p0, Lo/PendingTransactionActions$Activity;->e:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions$ActionBar;->e(Lo/SyncActivityTooManyDeletes;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    iget-object v1, v1, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    invoke-virtual {v1}, Lo/WindowVisibilityItem;->h()V

    .line 398
    iget-object v1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    iget-object v2, p0, Lo/PendingTransactionActions$Activity;->e:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions;->e(Lo/SyncActivityTooManyDeletes;)V

    .line 399
    iget-object v1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    iget-object v2, p0, Lo/PendingTransactionActions$Activity;->e:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions;->b(Lo/SyncActivityTooManyDeletes;)V

    .line 401
    :cond_0
    iget-object v1, p0, Lo/PendingTransactionActions$Activity;->d:Lo/PendingTransactionActions;

    invoke-virtual {v1}, Lo/PendingTransactionActions;->d()V

    .line 402
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
