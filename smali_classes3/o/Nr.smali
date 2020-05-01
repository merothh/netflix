.class public final Lo/Nr;
.super Lo/Enum;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Nw;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/Enum;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/Nr;->d:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/Nr;->g:Ljava/util/List;

    return-void
.end method

.method private final f()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lo/Nr;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/Nr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/Nr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lo/Nr;->b:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/Nr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 13

    if-eqz p1, :cond_5

    .line 20
    iget-object v0, p0, Lo/Nr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;->viewData()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->vlvURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Nr;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->labelVariantId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Nr;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->dismissCtaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Nr;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->buyCtaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Nr;->i:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->buyCtaAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Nr;->j:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->offerChoices()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lo/Nr;->b:Z

    .line 29
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->offerChoices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 30
    invoke-static {p1}, Lo/akz;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 68
    new-instance v1, Lo/Nr$StateListAnimator;

    invoke-direct {v1}, Lo/Nr$StateListAnimator;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;

    .line 33
    iget-object v1, p0, Lo/Nr;->g:Ljava/util/List;

    .line 34
    new-instance v12, Lo/Nw;

    .line 35
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->planId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountDurationType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->discountPercentage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->fullPriceFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->offerPriceFormatted()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 42
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isBestOffer()Z

    move-result v10

    .line 43
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferChoice;->isSelected()Z

    move-result v11

    move-object v2, v12

    .line 34
    invoke-direct/range {v2 .. v11}, Lo/Nw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_2
    sget-object v0, Lo/akj;->a:Lo/akj;

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_3

    .line 47
    :cond_4
    invoke-direct {p0}, Lo/Nr;->f()V

    sget-object p1, Lo/akj;->a:Lo/akj;

    :cond_5
    :goto_3
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lo/Nr;->d:Z

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Nw;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/Nr;->g:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/Nr;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Nr;->i:Ljava/lang/String;

    return-object v0
.end method
