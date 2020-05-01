.class Lo/BackupDataOutput$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupDataOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/BackupDataOutput;


# direct methods
.method constructor <init>(Lo/BackupDataOutput;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .line 164
    iget-object v0, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->d(Lo/BackupDataOutput;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 166
    monitor-exit v0

    return-object v2

    .line 168
    :cond_0
    iget-object v1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->e(Lo/BackupDataOutput;)V

    .line 169
    iget-object v1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->b(Lo/BackupDataOutput;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    invoke-static {v1}, Lo/BackupDataOutput;->a(Lo/BackupDataOutput;)V

    .line 171
    iget-object v1, p0, Lo/BackupDataOutput$4;->c:Lo/BackupDataOutput;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lo/BackupDataOutput;->d(Lo/BackupDataOutput;I)I

    .line 173
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lo/BackupDataOutput$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
