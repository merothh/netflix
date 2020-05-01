.class public Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;
.super Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
.source "SimilarItemsGridViewAdapter.java"


# instance fields
.field private final clipToCompleteRows:Z

.field private numColumns:I


# direct methods
.method public constructor <init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 17
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->clipToCompleteRows:Z

    .line 18
    iput p2, p0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->numColumns:I

    .line 19
    return-void
.end method

.method private clipCountToCompleteRows()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->getItemCountExcludingHeadersAndFooters()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->hasFooter()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    add-int/2addr v0, v2

    .line 44
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->getItemCountExcludingHeadersAndFooters()I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->numColumns:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->numColumns:I

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->hasFooter()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static refreshImagesIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 22
    if-nez p0, :cond_1

    .line 32
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 28
    instance-of v2, v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    if-eqz v2, :cond_2

    .line 29
    check-cast v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->refreshImageIfNecessary()V

    .line 26
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->clipToCompleteRows:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->clipCountToCompleteRows()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method
