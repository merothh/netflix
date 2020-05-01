.class public abstract Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.super Landroid/widget/LinearLayout;
.source "VideoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<TT;>;>",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoViewGroup"


# instance fields
.field protected isRtlLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setId(I)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setOrientation(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->applyContentOverlapPadding(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)V

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->isRtlLocale:Z

    return-void
.end method

.method private calculatePosition(II)I
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->isRtlLocale:Z

    if-eqz v0, :cond_1

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VideoViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calculate position for RTL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", for original position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", items per page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method


# virtual methods
.method protected abstract createChildView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TV;"
        }
    .end annotation
.end method

.method protected getChildPaddingDimenResId()I
    .locals 1

    const v0, 0x7f0a01cc

    return v0
.end method

.method protected getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object v0
.end method

.method public init(I)V
    .locals 5

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildPaddingDimenResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->createChildView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->shouldApplyPaddingToChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract shouldApplyPaddingToChildren()Z
.end method

.method public updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;III",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VideoViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting data, first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DataUtil;->getFirstItemSafely(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", num per page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listViewPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    mul-int v7, p3, p2

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_6

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VideoViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected valid child but child is null, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p4, v7, v6}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->updateViewIds(Landroid/view/View;III)V

    add-int v3, v7, v6

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    invoke-direct {p0, v6, p2}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->calculatePosition(II)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    if-nez p3, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object v2, p5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    :cond_4
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    :cond_5
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected abstract updateViewIds(Landroid/view/View;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;III)V"
        }
    .end annotation
.end method
