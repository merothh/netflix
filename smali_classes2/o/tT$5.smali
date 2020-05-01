.class Lo/tT$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lo/uf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lo/tT$5;->d:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/uf;JJ)V
    .locals 0

    .line 742
    iget-object p2, p0, Lo/tT$5;->d:Lo/tT;

    invoke-static {p2}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0x1006

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 743
    iget-object p1, p0, Lo/tT$5;->d:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1003

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lo/uf;JJLjava/io/IOException;)I
    .locals 0

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/Object;

    .line 754
    iget-object p1, p1, Lo/uf;->c:Lo/ug;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const-string p1, "nf_branch_cache"

    const-string p4, "onLoadError(%s, %s)"

    invoke-static {p1, p4, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 755
    iget-object p1, p0, Lo/tT$5;->d:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p3, 0x1003

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return p2
.end method

.method public e(Lo/uf;JJZ)V
    .locals 0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 748
    iget-object p1, p1, Lo/uf;->c:Lo/ug;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "nf_branch_cache"

    const-string p3, "onLoadCanceled(%s)"

    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 749
    iget-object p1, p0, Lo/tT$5;->d:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1003

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 739
    move-object v1, p1

    check-cast v1, Lo/uf;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/tT$5;->e(Lo/uf;JJZ)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 739
    move-object v1, p1

    check-cast v1, Lo/uf;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/tT$5;->a(Lo/uf;JJ)V

    return-void
.end method

.method public synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 7

    .line 739
    move-object v1, p1

    check-cast v1, Lo/uf;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/tT$5;->b(Lo/uf;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method
