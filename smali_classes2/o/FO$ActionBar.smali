.class public final Lo/FO$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FO;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/FO;

.field private c:I

.field private d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/FO;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lo/FO$ActionBar;->a:Lo/FO;

    iput p2, p0, Lo/FO$ActionBar;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-direct {p0}, Lo/FO$ActionBar;->e()V

    return-void
.end method

.method private final e()V
    .locals 4

    .line 198
    iget-object v0, p0, Lo/FO$ActionBar;->a:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->q()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 199
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lo/FO$ActionBar;->a:Lo/FO;

    invoke-virtual {v1}, Lo/FO;->q()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lo/ady;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    div-int/lit8 v0, v0, 0x2

    .line 205
    :cond_0
    iget-object v1, p0, Lo/FO$ActionBar;->a:Lo/FO;

    invoke-virtual {v1}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 206
    iget-object v1, p0, Lo/FO$ActionBar;->a:Lo/FO;

    invoke-virtual {v1}, Lo/FO;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 207
    iget v1, p0, Lo/FO$ActionBar;->e:I

    iget-object v2, p0, Lo/FO$ActionBar;->a:Lo/FO;

    invoke-virtual {v2}, Lo/FO;->q()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "parent.context"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lo/FO$ActionBar;->e:I

    div-int/2addr v0, v1

    iput v0, p0, Lo/FO$ActionBar;->d:I

    .line 209
    iget v0, p0, Lo/FO$ActionBar;->d:I

    int-to-float v0, v0

    const v1, 0x3fb70a3d    # 1.43f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/FO$ActionBar;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lo/ResourceCursorTreeAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 184
    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setAdjustViewBounds(Z)V

    .line 187
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    iget v1, p0, Lo/FO$ActionBar;->d:I

    iget v2, p0, Lo/FO$ActionBar;->c:I

    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 190
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    check-cast v0, Landroid/view/View;

    return-object v0
.end method
