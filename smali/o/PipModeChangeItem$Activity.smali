.class public Lo/PipModeChangeItem$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/PipModeChangeItem;

.field private final b:Lo/PendingTransactionActions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PendingTransactionActions<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lo/SyncActivityTooManyDeletes;


# direct methods
.method constructor <init>(Lo/PipModeChangeItem;Lo/SyncActivityTooManyDeletes;Lo/PendingTransactionActions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SyncActivityTooManyDeletes;",
            "Lo/PendingTransactionActions<",
            "*>;)V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lo/PipModeChangeItem$Activity;->a:Lo/PipModeChangeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lo/PipModeChangeItem$Activity;->c:Lo/SyncActivityTooManyDeletes;

    .line 350
    iput-object p3, p0, Lo/PipModeChangeItem$Activity;->b:Lo/PendingTransactionActions;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 358
    iget-object v0, p0, Lo/PipModeChangeItem$Activity;->a:Lo/PipModeChangeItem;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lo/PipModeChangeItem$Activity;->b:Lo/PendingTransactionActions;

    iget-object v2, p0, Lo/PipModeChangeItem$Activity;->c:Lo/SyncActivityTooManyDeletes;

    invoke-virtual {v1, v2}, Lo/PendingTransactionActions;->b(Lo/SyncActivityTooManyDeletes;)V

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
