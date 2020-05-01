.class public Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemDecorationUniformPadding.java"


# instance fields
.field private headerOffset:I

.field protected numColumns:I

.field protected padding:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->headerOffset:I

    iput p1, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    iput p2, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->numColumns:I

    return-void
.end method

.method private adjustForHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->headerOffset:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isViewHeader(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->headerOffset:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p3, p2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->adjustForHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->numColumns:I

    rem-int/2addr v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->numColumns:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->adjustForHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->numColumns:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->numColumns:I

    if-ne v0, v2, :cond_0

    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;->padding:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
