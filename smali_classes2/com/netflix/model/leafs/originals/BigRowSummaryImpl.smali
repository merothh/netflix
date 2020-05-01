.class public Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;
.super Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/originals/BigRowSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/BillboardSummaryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideo()Lcom/netflix/model/leafs/originals/BillboardVideo;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/BigRowSummaryImpl;->getVideoAssets()Lcom/netflix/model/leafs/originals/VideoAssets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/VideoAssets;->horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
