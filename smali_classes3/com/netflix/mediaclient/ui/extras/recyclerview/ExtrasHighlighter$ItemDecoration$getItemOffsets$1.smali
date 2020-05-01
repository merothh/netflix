.class public final Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ic$Application;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/OfLong;",
        "Landroidx/recyclerview/widget/RecyclerView$Fragment;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/OfLong;Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 242
    invoke-virtual {p1, v0}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object v1

    const-string v2, "adapter.getModelAtPosition(position)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    instance-of v2, v1, Lo/GX;

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {p1}, Lo/OfLong;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    check-cast v1, Lo/GX;

    invoke-interface {v1}, Lo/GX;->l()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_1

    .line 256
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v1}, Lo/GX;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1}, Lo/GX;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 262
    :cond_2
    instance-of v1, v1, Lo/Hl;

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_4

    .line 267
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    .line 268
    invoke-virtual {p1, v1}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object p1

    const-string v1, "adapter.getModelAtPosition(previousPosition)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    instance-of v1, p1, Lo/GX;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    if-lez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    check-cast p1, Lo/GX;

    invoke-interface {p1}, Lo/GX;->m()Lo/GW;

    move-result-object p1

    invoke-virtual {p1}, Lo/GW;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 276
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v0, p2

    .line 275
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, Lo/OfLong;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/recyclerview/ExtrasHighlighter$ItemDecoration$getItemOffsets$1;->d(Lo/OfLong;Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
