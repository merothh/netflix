.class public Lo/afq;
.super Lo/BackupAgent;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/BackupAgent<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lo/BackupAgentHelper;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lo/BackupAgentHelper;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lo/BackupAgent;-><init>(Lcom/bumptech/glide/Glide;Lo/BackupAgentHelper;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public J()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 330
    invoke-super {p0}, Lo/BackupAgent;->f()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public K()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 285
    invoke-super {p0}, Lo/BackupAgent;->c()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public L()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 348
    invoke-super {p0}, Lo/BackupAgent;->g()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public M()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 312
    invoke-super {p0}, Lo/BackupAgent;->i()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public N()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 357
    invoke-super {p0}, Lo/BackupAgent;->j()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public O()Lo/afq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 584
    invoke-super {p0}, Lo/BackupAgent;->b()Lo/BackupAgent;

    move-result-object v0

    check-cast v0, Lo/afq;

    return-object v0
.end method

.method public synthetic a()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->O()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(F)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->e(F)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(II)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lo/afq;->c(II)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lo/afq;->c(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/PeriodicSync;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Lo/PeriodicSync;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/RestoreObserver;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Lo/RestoreObserver;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->c(Z)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lo/BackupAgent;->d(I)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 276
    invoke-super {p0, p1}, Lo/BackupAgent;->c(Lcom/bumptech/glide/load/DecodeFormat;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public a(Lo/FileBackupHelperBase;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 222
    invoke-super {p0, p1}, Lo/BackupAgent;->b(Lo/FileBackupHelperBase;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public a(Lo/ReceiverCallNotAllowedException;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 486
    invoke-super {p0, p1}, Lo/BackupAgent;->c(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public synthetic b()Lo/BackupAgent;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->O()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lo/BackupDataInput;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->d(Lo/BackupDataInput;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->e(Lo/ReceiverCallNotAllowedException;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->c(Lcom/bumptech/glide/Priority;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lo/FileBackupHelperBase;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->a(Lo/FileBackupHelperBase;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1}, Lo/BackupAgent;->c(I)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Lo/BackupAgent;->e(Ljava/lang/Class;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 522
    invoke-super {p0, p1}, Lo/BackupAgent;->d(Ljava/lang/Object;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 543
    invoke-super {p0, p1}, Lo/BackupAgent;->c(Ljava/lang/String;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Lo/PauseActivityItem;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PauseActivityItem;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lo/BackupAgent;->d(Lo/PauseActivityItem;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Lo/PeriodicSync;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PeriodicSync<",
            "*>;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 465
    invoke-super {p0, p1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Lo/RestoreObserver;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 384
    invoke-super {p0, p1}, Lo/BackupAgent;->a(Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public b(Z)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1}, Lo/BackupAgent;->d(Z)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Ljava/lang/String;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/PeriodicSync;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Lo/PeriodicSync;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->a(Lo/ReceiverCallNotAllowedException;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->K()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(I)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(I)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lcom/bumptech/glide/load/DecodeFormat;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public c(II)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1, p2}, Lo/BackupAgent;->a(II)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/Priority;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lo/BackupAgent;->b(Lcom/bumptech/glide/Priority;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 294
    invoke-super {p0, p1}, Lo/BackupAgent;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public c(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FullBackupDataOutput<",
            "TY;>;TY;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 231
    invoke-super {p0, p1, p2}, Lo/BackupAgent;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public c(Z)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lo/BackupAgent;->a(Z)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->O()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Ljava/lang/Object;)Lo/BackupAgent;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Ljava/lang/Object;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(I)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->a(I)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lo/PauseActivityItem;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Lo/PauseActivityItem;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Z)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Z)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/BackupDataInput;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BackupDataInput<",
            "*-TTranscodeType;>;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 472
    invoke-super {p0, p1}, Lo/BackupAgent;->b(Lo/BackupDataInput;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public synthetic e(Ljava/lang/Class;)Lo/PeriodicSync;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/afq;->b(Ljava/lang/Class;)Lo/afq;

    move-result-object p1

    return-object p1
.end method

.method public e(F)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lo/BackupAgent;->a(F)Lo/PeriodicSync;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public e(Lo/ReceiverCallNotAllowedException;)Lo/afq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ReceiverCallNotAllowedException<",
            "TTranscodeType;>;)",
            "Lo/afq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 479
    invoke-super {p0, p1}, Lo/BackupAgent;->b(Lo/ReceiverCallNotAllowedException;)Lo/BackupAgent;

    move-result-object p1

    check-cast p1, Lo/afq;

    return-object p1
.end method

.method public synthetic f()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->J()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->L()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->M()Lo/afq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lo/PeriodicSync;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/afq;->N()Lo/afq;

    move-result-object v0

    return-object v0
.end method
