.class public final Lo/WW;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WA;


# instance fields
.field private b:I

.field private c:I

.field private final d:Landroid/view/ViewGroup;

.field private e:I

.field private final f:Z

.field private final h:Landroid/view/ViewGroup;

.field private i:I

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/WW;->h:Landroid/view/ViewGroup;

    iput-boolean p2, p0, Lo/WW;->f:Z

    .line 13
    iget-object p1, p0, Lo/WW;->h:Landroid/view/ViewGroup;

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->eC:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/WW;->d:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 53
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lo/WW;->b:I

    add-int/2addr v0, v1

    .line 54
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lo/WW;->e:I

    add-int/2addr v1, v2

    .line 55
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lo/WW;->c:I

    add-int/2addr v2, v3

    .line 56
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lo/WW;->i:I

    add-int/2addr p2, v3

    .line 52
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nL:I

    return v0
.end method

.method public a(Landroid/view/WindowInsets;)V
    .locals 4

    const-string v0, "insets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 41
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    .line 38
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    iput-object v0, p0, Lo/WW;->j:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lo/WW;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 65
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lo/WW;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->eo:I

    iget-object v3, p0, Lo/WW;->h:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 67
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lo/WW;->f:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->ey:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->eu:I

    :goto_0
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lo/WW;->b:I

    .line 69
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lo/WW;->c:I

    .line 70
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lo/WW;->e:I

    .line 71
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lo/WW;->i:I

    .line 73
    iget-object v0, p0, Lo/WW;->j:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lo/WW;->h()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lo/WW;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public h()Landroid/view/ViewGroup;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/WW;->d:Landroid/view/ViewGroup;

    return-object v0
.end method
