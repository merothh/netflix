.class Lo/ot$Activity;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;Landroid/os/Looper;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lo/ot$Activity;->e:Lo/ot;

    .line 1351
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1356
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_offlinePlayable"

    const-string v3, "handleMessage cmd=%d"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1357
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/ot$TaskDescription;

    .line 1358
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    .line 1359
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v0, 0x5

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 1372
    :cond_0
    iget-object v0, p0, Lo/ot$Activity;->e:Lo/ot;

    iget-object v1, v1, Lo/ot$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lo/ot;->d(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1373
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aQ:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 1376
    :cond_1
    iget-object v0, p0, Lo/ot$Activity;->e:Lo/ot;

    iget-object v1, v1, Lo/ot$TaskDescription;->d:Lo/oj;

    invoke-static {v0, v1}, Lo/ot;->e(Lo/ot;Lo/oj;)V

    goto :goto_0

    .line 1369
    :cond_2
    iget-object v0, p0, Lo/ot$Activity;->e:Lo/ot;

    iget-object v1, v1, Lo/ot$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lo/ot;->b(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1365
    :cond_3
    iget-object v0, p0, Lo/ot$Activity;->e:Lo/ot;

    iget-object v2, v1, Lo/ot$TaskDescription;->d:Lo/oj;

    iget-object v1, v1, Lo/ot$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v2, v1}, Lo/ot;->d(Lo/ot;Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1366
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->b:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 1361
    :cond_4
    iget-object v0, p0, Lo/ot$Activity;->e:Lo/ot;

    invoke-static {v0}, Lo/ot;->d(Lo/ot;)V

    .line 1362
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aO:Lcom/netflix/mediaclient/StatusCode;

    .line 1379
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_5

    .line 1380
    iget-object p1, p0, Lo/ot$Activity;->e:Lo/ot;

    new-instance v0, Lo/nU$FragmentManager;

    invoke-virtual {p1}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lo/ot$Activity;->e:Lo/ot;

    invoke-virtual {v3}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {p1, v0}, Lo/ot;->d(Lo/ot;Lo/nU;)V

    :cond_5
    return-void
.end method
