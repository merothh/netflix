.class Lo/QQ$3$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QQ$3;->d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/QQ$3;

.field final synthetic d:Lo/AS;


# direct methods
.method constructor <init>(Lo/QQ$3;Lo/AS;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iput-object p2, p0, Lo/QQ$3$3;->d:Lo/AS;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v0, v0, Lo/QQ$3;->h:Lo/QQ;

    new-instance v1, Lo/nU$ActionBar;

    iget-object v2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v2, v2, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v3, v3, Lo/QQ$3;->c:Ljava/lang/String;

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lo/nU$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v0, v1}, Lo/QQ;->e(Lo/QQ;Lo/nU;)V

    .line 295
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p3, "offlineData"

    const-string v0, "Saving episode details and season details"

    .line 299
    invoke-static {p3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-class p3, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/media/BookmarkStore;

    iget-object v0, p0, Lo/QQ$3$3;->d:Lo/AS;

    iget-object v1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v1, v1, Lo/QQ$3;->d:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lo/Bc;Ljava/lang/String;)V

    .line 305
    iget-object p3, p0, Lo/QQ$3$3;->d:Lo/AS;

    const/4 v0, 0x0

    iget-object v1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v1, v1, Lo/QQ$3;->d:Ljava/lang/String;

    iget-object v2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget v2, v2, Lo/QQ$3;->b:I

    invoke-static {p3, v0, v1, v2}, Lo/Rj;->e(Lo/Bc;Ljava/util/List;Ljava/lang/String;I)Lo/BY;

    move-result-object p3

    .line 306
    iget-object v0, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v0, v0, Lo/QQ$3;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget v1, v1, Lo/QQ$3;->b:I

    invoke-static {p1, p2, v0, v1}, Lo/Rj;->e(Lo/Bc;Ljava/util/List;Ljava/lang/String;I)Lo/BY;

    move-result-object p2

    .line 307
    iget-object v0, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v0, v0, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {v0}, Lo/QQ;->b(Lo/QQ;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v1, v1, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {v1}, Lo/QQ;->c(Lo/QQ;)Lo/BE;

    move-result-object v1

    invoke-static {v0, p3, p2, v1}, Lo/Rj;->c(Landroid/os/Handler;Lo/BY;Lo/BY;Lo/BE;)V

    .line 309
    iget-object p2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p2, p2, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->a(Lo/QQ;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p2

    iget-object p3, p0, Lo/QQ$3$3;->d:Lo/AS;

    .line 310
    invoke-interface {p3}, Lo/AS;->m()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lo/QQ$3$3;->d:Lo/AS;

    .line 311
    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    iget-object v2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v2, v2, Lo/QQ$3;->h:Lo/QQ;

    iget-object v3, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v3, v3, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v4, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v4, v4, Lo/QQ$3;->c:Ljava/lang/String;

    iget-object v5, p0, Lo/QQ$3$3;->d:Lo/AS;

    .line 313
    invoke-interface {v5}, Lo/AS;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lo/QQ;->c(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object v2

    .line 309
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    .line 316
    iget-object p2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p2, p2, Lo/QQ$3;->h:Lo/QQ;

    invoke-static {p2}, Lo/QQ;->a(Lo/QQ;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p2

    .line 317
    invoke-interface {p1}, Lo/Bb;->b()Ljava/lang/String;

    move-result-object p3

    .line 318
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    iget-object v2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v2, v2, Lo/QQ$3;->h:Lo/QQ;

    iget-object v3, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v3, v3, Lo/QQ$3;->e:Ljava/lang/String;

    iget-object v4, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object v4, v4, Lo/QQ$3;->c:Ljava/lang/String;

    .line 320
    invoke-interface {p1}, Lo/Bb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lo/QQ;->c(Lo/QQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    move-result-object v2

    .line 316
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    .line 323
    iget-object p2, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p2, p2, Lo/QQ$3;->h:Lo/QQ;

    iget-object p3, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p3, p3, Lo/QQ$3;->c:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lo/QQ;->a(Lo/QQ;Lo/Bc;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p1, p1, Lo/QQ$3;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 325
    iget-object p1, p0, Lo/QQ$3$3;->b:Lo/QQ$3;

    iget-object p1, p1, Lo/QQ$3;->g:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 296
    :cond_2
    :goto_0
    invoke-static {p3, p1}, Lo/QQ;->e(Lcom/netflix/mediaclient/android/app/Status;Lo/Bc;)V

    return-void
.end method
