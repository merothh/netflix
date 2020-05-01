.class public final Lo/aez;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/view/View;)Lo/MultiAutoCompleteTextView$Application;
    .locals 0

    .line 57
    sget-object p0, Lo/aeG;->c:Lo/aeG;

    return-object p0
.end method

.method private static synthetic c(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 58
    new-instance v0, Lo/Lx;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/Lx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final c(Lo/Bc;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p0}, Lo/Bc;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-interface {p0}, Lo/Bc;->aR()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lo/agg;

    if-eqz v0, :cond_1

    check-cast p0, Lo/agg;

    .line 29
    invoke-interface {p0}, Lo/agg;->aJ()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p0}, Lo/agg;->aJ()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lo/aez;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lo/MultiAutoCompleteTextView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$LoaderManager;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 38
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance p0, Lo/aez$1;

    invoke-direct {p0, p1, v0}, Lo/aez$1;-><init>(Lo/MultiAutoCompleteTextView;I)V

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    return-object v1
.end method
