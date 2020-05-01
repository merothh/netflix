.class Lo/IL$Activity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL$Activity;-><init>(Lo/IL;Lo/DN$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lo/IL$Activity$2;->b:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1104
    new-instance v0, Lo/ResourceCursorTreeAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1105
    invoke-virtual {v0, v1}, Lo/ResourceCursorTreeAdapter;->setAdjustViewBounds(Z)V

    .line 1109
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lo/ResourceCursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1111
    iget-object v1, p0, Lo/IL$Activity$2;->b:Lo/IL;

    invoke-virtual {v1}, Lo/IL;->x()I

    move-result v1

    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    iget-object v2, p0, Lo/IL$Activity$2;->b:Lo/IL;

    .line 1114
    invoke-static {v2}, Lo/IL;->b(Lo/IL;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lo/IL$Activity$2;->b:Lo/IL;

    .line 1115
    invoke-static {v2}, Lo/IL;->b(Lo/IL;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lo/IL$Activity$2;->b:Lo/IL;

    .line 1116
    invoke-virtual {v2}, Lo/IL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int v2, v2, v1

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    .line 1119
    iget-object v1, p0, Lo/IL$Activity$2;->b:Lo/IL;

    iget-boolean v1, v1, Lo/IL;->i:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f100000    # 0.5625f

    goto :goto_0

    :cond_0
    const v1, 0x3fb70a3d    # 1.43f

    :goto_0
    int-to-float v2, p1

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 1123
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    invoke-direct {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 1124
    invoke-virtual {v0, v2}, Lo/ResourceCursorTreeAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1125
    iget-object p1, p0, Lo/IL$Activity$2;->b:Lo/IL;

    iget-boolean p1, p1, Lo/IL;->i:Z

    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setIsHorizontal(Z)V

    return-object v0
.end method
