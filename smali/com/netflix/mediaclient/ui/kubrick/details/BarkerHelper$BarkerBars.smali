.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;
.super Ljava/lang/Object;
.source "BarkerHelper.java"


# instance fields
.field private mArtworkFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

.field private mColumnAndGutterWidth:I

.field private mContext:Landroid/content/Context;

.field private mMaxModalWidth:I

.field private mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getFormatForDevice(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->getFormatForDevice(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mArtworkFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getTotalColumnNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->isOversized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private getColumnsWidth(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBookmarkWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getBookmarkColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getColumnPlusGutterWidth()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    return v0
.end method

.method public getColumnWidth()I
    .locals 2

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCreditsWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getCreditsColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEpisodeImageWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getEpisodeImageColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGutterWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getModalWidth()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnsWidth(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfSims()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getNumberOfSims()I

    move-result v0

    return v0
.end method

.method public getPreReleaseContentWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getPreReleaseColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSynopsisWidth()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getEpisodeSynopsisColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTotalColumnNum()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->isOversized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public isOversized()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->WIDE:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getColumnsWidth(I)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynopsisAndCreditsInSameRow()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
