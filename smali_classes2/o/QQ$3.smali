.class Lo/QQ$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QQ;->b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Runnable;

.field final synthetic h:Lo/QQ;


# direct methods
.method constructor <init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lo/QQ$3;->h:Lo/QQ;

    iput-object p2, p0, Lo/QQ$3;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/QQ$3;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lo/QQ$3;->a:Z

    iput-object p5, p0, Lo/QQ$3;->d:Ljava/lang/String;

    iput p6, p0, Lo/QQ$3;->b:I

    iput-object p7, p0, Lo/QQ$3;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .line 272
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 273
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    invoke-interface {p1}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 282
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPY-16890 ShowId missing for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/QQ$3;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lo/QQ$3;->h:Lo/QQ;

    new-instance p2, Lo/nU$ActionBar;

    iget-object v0, p0, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v1, p0, Lo/QQ$3;->c:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->c:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, v0, v1, v2}, Lo/nU$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {p1, p2}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    return-void

    .line 287
    :cond_1
    iget-object p2, p0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2, v2}, Lo/QQ;->c(Lo/QQ;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 288
    iget-object p2, p0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->e(Lo/QQ;)Lo/hW;

    move-result-object v1

    iget-object v3, p0, Lo/QQ$3;->e:Ljava/lang/String;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lo/QQ$3;->a:Z

    sget-object v6, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v7, Lo/QQ$3$3;

    invoke-direct {v7, p0, p1}, Lo/QQ$3$3;-><init>(Lo/QQ$3;Lo/AS;)V

    invoke-interface/range {v1 .. v7}, Lo/hW;->d(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_0

    :cond_2
    const-string p2, "offlineData"

    const-string v0, "Saving episode details, season details already saved"

    .line 330
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-class p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    iget-object v0, p0, Lo/QQ$3;->d:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lo/Bc;Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->b(Lo/QQ;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lo/QQ$3;->d:Ljava/lang/String;

    iget v4, p0, Lo/QQ$3;->b:I

    iget-object p2, p0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->c(Lo/QQ;)Lo/BE;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lo/Rj;->d(Landroid/os/Handler;Lo/Bc;Ljava/util/List;Ljava/lang/String;ILo/BE;)V

    .line 335
    iget-object p2, p0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->a(Lo/QQ;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p2

    .line 336
    invoke-interface {p1}, Lo/AS;->m()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    iget-object v3, p0, Lo/QQ$3;->h:Lo/QQ;

    iget-object v4, p0, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v5, p0, Lo/QQ$3;->c:Ljava/lang/String;

    .line 339
    invoke-interface {p1}, Lo/AS;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, v5, p1}, Lo/QQ;->c(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object p1

    .line 335
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    .line 341
    iget-object p1, p0, Lo/QQ$3;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 342
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void

    .line 274
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/QQ$3;->h:Lo/QQ;

    new-instance v1, Lo/nU$ActionBar;

    iget-object v2, p0, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/QQ$3;->c:Ljava/lang/String;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lo/nU$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v0, v1}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    .line 275
    invoke-static {p2, p1}, Lo/QQ;->e(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V

    return-void
.end method
