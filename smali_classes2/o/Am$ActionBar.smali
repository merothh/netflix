.class Lo/Am$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lo/Am;


# direct methods
.method private constructor <init>(Lo/Am;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/Am;Lo/Am$3;)V
    .locals 0

    .line 1188
    invoke-direct {p0, p1}, Lo/Am$ActionBar;-><init>(Lo/Am;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 1

    .line 2221
    instance-of v0, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v0, :cond_0

    .line 2222
    check-cast p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 2032
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public onAccountDataFetched(ILcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2184
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2190
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onAccountDataFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2194
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1716
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1717
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1723
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1725
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onAdvisoriesFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1727
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onAllProfilesAuthorizationCredentialsFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1751
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onAllProfilesAuthorizationCredentialsFetched requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1755
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2200
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2206
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onAutoLoginTokenCreated requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2210
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2104
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2110
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onAvailableAvatarsListFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2114
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2042
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2049
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2051
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onBBVideosFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2053
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onBigRowVideoFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1761
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1768
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    const-string v1, "ServiceManager"

    if-nez v0, :cond_0

    .line 1770
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onBigRowVideoFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1772
    :cond_0
    new-instance p1, Lo/zP;

    invoke-direct {p1, v1}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-interface {v0, p2, p3}, Lo/zU;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1774
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/Aw;

    .line 1775
    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    invoke-interface {p3}, Lo/Aw;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 1777
    sget-object v2, Lo/Am$5;->e:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const-string v0, "fetch not implemented"

    .line 1794
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1791
    :cond_2
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3, p1}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_1

    .line 1788
    :cond_3
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, p1}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_1

    .line 1779
    :cond_4
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    .line 1780
    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v7, p1

    .line 1779
    invoke-interface/range {v2 .. v7}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    .line 1798
    :goto_1
    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1799
    invoke-interface {p3}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object p3

    invoke-interface {p3}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionId()Ljava/lang/String;

    move-result-object v3

    .line 1800
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1801
    iget-object p3, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-virtual {p3}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public onBooleanResponse(IZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1906
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1908
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1910
    invoke-interface {p1, p2, p3}, Lo/zU;->d(ZLcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1491
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1498
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onCWVideosFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1502
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onDownloadableVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AB;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1508
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1515
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onDownloadableVideosFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onDownloadedForYouFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1856
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1858
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1860
    invoke-interface {p1, p2, p3}, Lo/zU;->r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onEpisodeDetailsFetched(ILo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1457
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1464
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onEpisodeDetailsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1559
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1566
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onEpisodesFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1570
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onExtrasFeedFetched(ILcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2074
    invoke-direct {p0, p4, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2076
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ServiceManager"

    const-string v4, "onExtrasFeedFetched requestId=%d errorCode=%s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v4, "onExtrasFeedFetched summary=%s"

    .line 2077
    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2079
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    .line 2081
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "No callback for onExtrasFeedFetched requestId %d"

    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2083
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->e(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onExtrasFeedItemFetched(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 2089
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2091
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ServiceManager"

    const-string v4, "onExtrasFeedItemFetched requestId=%d errorCode=%s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v4, "onExtrasFeedItemFetched requestedVideos=%s"

    .line 2092
    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2094
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    .line 2096
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "No callback for onExtrasFeedItemFetched requestId %d"

    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2098
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onFalkorVideoFetched(ILo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1390
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1397
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onFalkorVideoFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1401
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->a(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onFlatGenreVideosFetched(ILcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1268
    invoke-direct {p0, p4, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "ServiceManager"

    const-string v4, "onFlatGenreVideosFetched requestId=%s, errorCode=%s, requestedVideos=%s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1270
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    .line 1272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "No callback for onVideosFetched requestId %s"

    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1274
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1618
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1625
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1627
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onGenreListsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1629
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1635
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1642
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onGenresFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1646
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onInteractiveDebugMenuItemsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1838
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1839
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1841
    invoke-interface {p1, p2, p3}, Lo/zU;->q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onInteractiveMomentsFetched(ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1828
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1830
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1832
    invoke-interface {p1, p2, p3}, Lo/zU;->c(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onInteractiveResetStateFetched(ILcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1847
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1848
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1850
    invoke-interface {p1, p2, p3}, Lo/zU;->a(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onKidsCharacterDetailsFetched(ILo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1437
    invoke-direct {p0, p4, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1448
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onKidsCharacterDetailsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->d(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onLoLoMoPrefetched(ILo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1212
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1217
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    invoke-interface {p1, p2, p3}, Lo/zU;->b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onLoLoMoSummaryFetched(ILo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1280
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1286
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onLoLoMoSummaryFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1290
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1229
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1237
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1243
    :cond_0
    invoke-interface {p1, p2, p3}, Lo/zU;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1342
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1348
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onLoginComplete requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1352
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1358
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1363
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onLogoutComplete requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->b(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onMemberReferralFetched(ILcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1936
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1937
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1939
    invoke-interface {p1, p2, p3}, Lo/zU;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onMovieDetailsFetched(ILo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1407
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1409
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onMovieDetailsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1413
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onNotificationSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2136
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2142
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onNotificationSummaryFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2146
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->b(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onNotificationsListFetched(ILcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2120
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2126
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onNotificationsListFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2130
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onNotificationsMarkedAsRead(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2152
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2158
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onNotificationsMarkedAsRead requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2162
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onPostPlayVideosFetched(ILo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1542
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1549
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onPostPlayVideoFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1553
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onPrePlayExperienceFetched(ILcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1737
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onPrePlayExperienceFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1741
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->a(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onPreviewsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1525
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1532
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onPreviewsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1536
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onProductChoiceResponse(ILcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1886
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1888
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1890
    invoke-interface {p1, p2, p3}, Lo/zU;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2168
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2174
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onProfileListUpdateStatus requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2178
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->f(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1945
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1951
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1953
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onQueueAdd requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1955
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1961
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1967
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1969
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onQueueRemove requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1971
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onResourceCached(ILjava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object/from16 v8, p8

    .line 1312
    invoke-direct {p0, v8, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1318
    iget-object v2, v0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v2}, Lo/Am;->a(Lo/Am;)Lo/Am$Application;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/Am$Application;->a(I)Lo/zU;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No callback for onResourceCached requestId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceManager"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    move-object/from16 v8, p8

    .line 1322
    invoke-interface/range {v1 .. v8}, Lo/zU;->b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1296
    invoke-direct {p0, p4, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1302
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0}, Lo/Am;->a(Lo/Am;)Lo/Am$Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Am$Application;->a(I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onResourceFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->d(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1420
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1427
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onScenePositionFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1431
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->a(ILcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onSearchResultsFetched(ILo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 1

    .line 1977
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1984
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1986
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onSearchResultsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1988
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    :goto_0
    return-void
.end method

.method public onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1576
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1583
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onSeasonsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1197
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->b(Lo/Am;I)I

    .line 1198
    iget-object p1, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->c(Lo/Am;)Lo/zT;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1200
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Am;->a(Lo/Am;Z)Z

    .line 1202
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-interface {p1, v0, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-interface {p1, v0, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowDetailsAndSeasonsFetched(ILo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1606
    invoke-direct {p0, p4, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1608
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onShowDetailsAndSeasonsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lo/zU;->e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onShowDetailsFetched(ILo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1594
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1596
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1598
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onShowDetailsFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onSimsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/agg;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1818
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1820
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1822
    invoke-interface {p1, p2, p3}, Lo/zU;->p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1668
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1674
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1676
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onSurveyFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1678
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->b(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onTallPanelVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 2059
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2061
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ServiceManager"

    const-string v4, "onTallPanelVideosFetched requestId=%d errorCode=%s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v4, "onTallPanelVideosFetched requestedVideos=%s"

    .line 2062
    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2064
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    .line 2066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "No callback for onTallPanelVideosFetched requestId %d"

    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2068
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onTrackableListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/Bv;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1994
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 2001
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2003
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onTrackableListFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2005
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onUmsSimpleUrlPatternResolved(ILcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1866
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1868
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1870
    invoke-interface {p1, p2, p3}, Lo/zU;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ResolveSimpleUrlPatternResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onUpdatePlanCompleted(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1700
    invoke-direct {p0, p2, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1706
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1708
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No callback for onUpdatePlanCompleted requestId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1710
    :cond_0
    invoke-interface {v0, p2}, Lo/zU;->j(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onUpdateProductChoiceResponse(ILcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1896
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1898
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1900
    invoke-interface {p1, p2, p3}, Lo/zU;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onVideoMaturityChecked(ILcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1876
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1878
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1880
    invoke-interface {p1, p2, p3}, Lo/zU;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onVideoRatingSet(ILo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1652
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1658
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onVideoRatingSet requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1662
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->c(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onVideoSharingInfoFetched(ILo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1925
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1926
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1928
    invoke-interface {p1, p2, p3}, Lo/zU;->c(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onVideoSummaryFetched(ILo/AR;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1373
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1380
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No callback for onVideoSummaryFetched requestId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceManager"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_0
    invoke-interface {v0, p2, p3}, Lo/zU;->b(Lo/AR;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1249
    invoke-direct {p0, p3, p1}, Lo/Am$ActionBar;->d(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1256
    iget-object v0, p0, Lo/Am$ActionBar;->d:Lo/Am;

    invoke-static {v0, p1}, Lo/Am;->d(Lo/Am;I)Lo/zU;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    invoke-interface {p1, p2, p3}, Lo/zU;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
