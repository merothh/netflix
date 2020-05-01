.class Lo/KX$Activity;
.super Lo/Lp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/AR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 520
    invoke-direct/range {p0 .. p8}, Lo/Lp;-><init>(Ljava/lang/String;Lo/AR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static b(Lo/Lm;Lo/Aw;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/KX$Activity;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 525
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 528
    :cond_0
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 533
    :cond_1
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardVideo;->motionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    if-nez v5, :cond_3

    const-string p1, "no bigRowVideoId."

    .line 540
    invoke-virtual {p0, p1}, Lo/Lm;->e(Ljava/lang/String;)V

    return-object v0

    .line 543
    :cond_3
    new-instance p0, Lo/KX$Activity;

    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getUiLabel()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 547
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 550
    invoke-interface {p1}, Lo/Aw;->getBoxartId()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v10}, Lo/KX$Activity;-><init>(Ljava/lang/String;Lo/AR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_1
    const-string p1, "no background."

    .line 529
    invoke-virtual {p0, p1}, Lo/Lm;->e(Ljava/lang/String;)V

    return-object v0

    :cond_5
    :goto_2
    const-string p1, "no big row data or activity is null"

    .line 526
    invoke-virtual {p0, p1}, Lo/Lm;->e(Ljava/lang/String;)V

    return-object v0
.end method
