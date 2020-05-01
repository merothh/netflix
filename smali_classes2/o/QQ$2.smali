.class Lo/QQ$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic j:Lo/QQ;


# direct methods
.method constructor <init>(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lo/QQ$2;->j:Lo/QQ;

    iput-object p2, p0, Lo/QQ$2;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/QQ$2;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/QQ$2;->a:Ljava/lang/String;

    iput p5, p0, Lo/QQ$2;->c:I

    iput-object p6, p0, Lo/QQ$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 244
    invoke-super {p0, p1, p2}, Lo/cq;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 245
    iget-object v0, p0, Lo/QQ$2;->j:Lo/QQ;

    new-instance v1, Lo/nU$ActionBar;

    iget-object v2, p0, Lo/QQ$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/QQ$2;->d:Ljava/lang/String;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lo/nU$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v0, v1}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    .line 246
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "offlineData"

    const-string v0, "Saving movie details"

    .line 250
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-class p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    iget-object v0, p0, Lo/QQ$2;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lo/Bc;Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lo/QQ$2;->j:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->b(Lo/QQ;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lo/QQ$2;->a:Ljava/lang/String;

    iget v4, p0, Lo/QQ$2;->c:I

    iget-object p2, p0, Lo/QQ$2;->j:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->c(Lo/QQ;)Lo/BE;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lo/Rj;->d(Landroid/os/Handler;Lo/Bc;Ljava/util/List;Ljava/lang/String;ILo/BE;)V

    .line 254
    iget-object p2, p0, Lo/QQ$2;->j:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->a(Lo/QQ;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p2

    .line 255
    invoke-interface {p1}, Lo/AX;->b()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-interface {p1}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    iget-object v3, p0, Lo/QQ$2;->j:Lo/QQ;

    iget-object v4, p0, Lo/QQ$2;->e:Ljava/lang/String;

    iget-object v5, p0, Lo/QQ$2;->d:Ljava/lang/String;

    .line 258
    invoke-interface {p1}, Lo/AX;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lo/QQ;->c(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object v3

    .line 254
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    .line 260
    iget-object p2, p0, Lo/QQ$2;->j:Lo/QQ;

    iget-object v0, p0, Lo/QQ$2;->d:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lo/QQ;->a(Lo/QQ;Lo/Bc;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lo/QQ$2;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 263
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 247
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lo/QQ;->e(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V

    return-void
.end method
