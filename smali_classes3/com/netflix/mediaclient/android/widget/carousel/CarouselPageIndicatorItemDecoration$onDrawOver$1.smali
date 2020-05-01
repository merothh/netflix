.class public final Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SelectionActionModeHelper;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroid/view/View;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic d:Landroid/graphics/Canvas;

.field final synthetic e:Lo/SelectionActionModeHelper;


# direct methods
.method public constructor <init>(Lo/SelectionActionModeHelper;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->d:Landroid/graphics/Canvas;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/RecyclerView$Activity;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            ">;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linearLayoutManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p3, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 137
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result v3

    sub-int/2addr v2, v3

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result p2

    sub-int/2addr v3, p2

    const/4 p2, 0x0

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v2

    .line 142
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result v3

    const/4 p2, 0x1

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    if-ne v4, v1, :cond_3

    :goto_3
    const/4 p2, 0x0

    goto :goto_4

    :cond_3
    if-nez v4, :cond_5

    .line 154
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 155
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    sub-float/2addr v3, p2

    mul-float p2, v1, v3

    goto :goto_4

    .line 156
    :cond_4
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    .line 157
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo/SelectionActionModeHelper;->d:Lo/SelectionActionModeHelper$StateListAnimator;

    invoke-virtual {v4}, Lo/SelectionActionModeHelper$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " first="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " last="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " childCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface {p2, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :goto_4
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {v1}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {v1}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {v0}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {v0}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lo/SeekBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {v0}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object v0

    .line 173
    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result p1

    .line 170
    invoke-virtual {v0, v2, p1, p2, p3}, Lo/SeekBar;->e(IIFZ)V

    .line 178
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->e:Lo/SelectionActionModeHelper;

    invoke-static {p1}, Lo/SelectionActionModeHelper;->d(Lo/SelectionActionModeHelper;)Lo/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->d:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Lo/SeekBar;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 156
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;->c(Landroidx/recyclerview/widget/RecyclerView$Activity;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
