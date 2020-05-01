.class public Lo/DP;
.super Lo/DH;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lo/DH;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILo/Du$Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lo/DH;-><init>(Landroid/content/Context;ILo/Du$Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/AS;)Ljava/lang/CharSequence;
    .locals 5

    .line 70
    invoke-interface {p1}, Lo/AS;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lo/DP;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gB:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/AS;->V()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected a()V
    .locals 4

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gu:I

    invoke-virtual {p0, v0}, Lo/DP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/DP;->l:Lo/BaseAdapter;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gt:I

    invoke-virtual {p0, v0}, Lo/DP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/DP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 42
    :goto_0
    invoke-virtual {p0}, Lo/DP;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v1

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 47
    invoke-super {p0}, Lo/DH;->a()V

    return-void
.end method

.method public a(Lo/AS;Lo/Bb;)V
    .locals 2

    .line 78
    invoke-super {p0, p1, p2}, Lo/DH;->a(Lo/AS;Lo/Bb;)V

    .line 80
    iget-object p2, p0, Lo/DP;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lo/DP;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    iget-object p2, p0, Lo/DP;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lo/DP;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lo/DP;->a(Lo/AS;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget-object p2, p0, Lo/DP;->l:Lo/BaseAdapter;

    if-eqz p2, :cond_2

    .line 89
    invoke-interface {p1}, Lo/AS;->v()Ljava/lang/String;

    move-result-object p2

    .line 90
    iget-object v0, p0, Lo/DP;->l:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v1, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p2, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    invoke-virtual {v0, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 91
    iget-object p2, p0, Lo/DP;->l:Lo/BaseAdapter;

    invoke-virtual {p0}, Lo/DP;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/DP;->a(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/AS;

    check-cast p2, Lo/Bb;

    invoke-virtual {p0, p1, p2}, Lo/DP;->a(Lo/AS;Lo/Bb;)V

    return-void
.end method

.method public b(Lo/As;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lo/DP;->c(Lo/As;)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lo/DP;->l:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lo/DP;->i:Z

    .line 56
    iget-object p1, p0, Lo/DP;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lo/DP;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lo/DP;->e()V

    return-void
.end method
