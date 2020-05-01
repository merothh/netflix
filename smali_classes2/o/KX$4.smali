.class Lo/KX$4;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KX;->b(Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/BillboardCTA;

.field final synthetic c:Lo/Am;

.field final synthetic d:Lo/KX;


# direct methods
.method constructor <init>(Lo/KX;Ljava/lang/String;Lcom/netflix/model/leafs/originals/BillboardCTA;Lo/Am;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lo/KX$4;->d:Lo/KX;

    iput-object p3, p0, Lo/KX$4;->a:Lcom/netflix/model/leafs/originals/BillboardCTA;

    iput-object p4, p0, Lo/KX$4;->c:Lo/Am;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/KX$4;->d:Lo/KX;

    invoke-static {v0, p2}, Lo/KX;->d(Lo/KX;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 347
    iget-object p2, p0, Lo/KX$4;->d:Lo/KX;

    invoke-static {p2, p1}, Lo/KX;->e(Lo/KX;Lo/AK;)Lo/AK;

    .line 348
    iget-object p1, p0, Lo/KX$4;->d:Lo/KX;

    iget-object p1, p1, Lo/KX;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lo/KX$4;->d:Lo/KX;

    iget-object p1, p1, Lo/KX;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 363
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 365
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0, p1, p2}, Lo/KX$4;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :cond_0
    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 355
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 357
    invoke-interface {p1}, Lo/AX;->bb()Lo/AK;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0, p1, p2}, Lo/KX$4;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :cond_0
    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 379
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 381
    iget-object p2, p0, Lo/KX$4;->a:Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/KY;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 382
    iget-object p2, p0, Lo/KX$4;->c:Lo/Am;

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, p0}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_0

    .line 384
    :cond_0
    invoke-interface {p1}, Lo/Bb;->bb()Lo/AK;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0, p1, p2}, Lo/KX$4;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 371
    invoke-super {p0, p1, p2}, Lo/zP;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 372
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 373
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AS;

    invoke-interface {v0}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AS;

    invoke-interface {p1}, Lo/AS;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/KX$4;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :cond_0
    return-void
.end method
