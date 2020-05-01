.class public final Lo/is$Application$Activity;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/is$Application;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/is$Application;


# direct methods
.method constructor <init>(Lo/is$Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-super {p0, p1, p2}, Lo/cq;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AM;

    .line 229
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-interface {p2}, Lo/AM;->getOriginalBrandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/is;->b(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-interface {p2}, Lo/AM;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/is;->b(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-interface {p2}, Lo/AM;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 208
    invoke-super {p0, p1, p2}, Lo/cq;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Az;

    .line 211
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo/Az;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 237
    invoke-super {p0, p1, p2}, Lo/cq;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Ax;

    .line 240
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-static {v0, p2}, Lo/is;->b(Lo/is;Lo/Ax;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AB;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-super {p0, p1, p2}, Lo/cq;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AB;

    .line 220
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo/AB;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-super {p0, p1, p2}, Lo/cq;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_2

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AT;

    .line 257
    instance-of v0, p2, Lo/agg;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ia;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    check-cast p2, Lo/agg;

    invoke-interface {p2}, Lo/agg;->bs()Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;->getUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-super {p0, p1, p2}, Lo/cq;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AR;

    .line 202
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "bigRowList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ok"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1, p2}, Lo/cq;->m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Aw;

    .line 248
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-interface {p2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lo/is;->b(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lo/is$Application$Activity;->e:Lo/is$Application;

    iget-object v0, v0, Lo/is$Application;->c:Lo/is;

    invoke-interface {p2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lo/is;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
