.class public final Lo/DO;
.super Lo/DH;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final p:I

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p5}, Lo/DH;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lo/DO;->q:Ljava/lang/String;

    iput p4, p0, Lo/DO;->p:I

    .line 30
    invoke-direct {p0}, Lo/DO;->f()V

    return-void
.end method

.method private final f()V
    .locals 4

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gu:I

    invoke-virtual {p0, v0}, Lo/DO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/DO;->l:Lo/BaseAdapter;

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gt:I

    invoke-virtual {p0, v0}, Lo/DO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lo/DO;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lo/DO;->p:I

    div-int/2addr v1, v2

    const-string v2, "container"

    .line 39
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v1, v1

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 43
    invoke-super {p0}, Lo/DH;->a()V

    return-void
.end method


# virtual methods
.method protected a(Lo/AS;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "episodeDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Lo/AS;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "episodeDetails.title"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lo/DO;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gB:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 67
    invoke-interface {p1}, Lo/AS;->V()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 68
    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(\n     \u2026tails.title\n            )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1
.end method

.method public a(Lo/AS;Lo/Bb;)V
    .locals 3

    const-string v0, "episode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2}, Lo/DH;->a(Lo/AS;Lo/Bb;)V

    .line 75
    iget-object p2, p0, Lo/DO;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_0
    iget-object p2, p0, Lo/DO;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lo/DO;->a(Lo/AS;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object p2, p0, Lo/DO;->l:Lo/BaseAdapter;

    if-eqz p2, :cond_2

    .line 81
    invoke-interface {p1}, Lo/AS;->v()Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 83
    invoke-virtual {p0}, Lo/DO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lo/Du;->a(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lo/DO;->q:Ljava/lang/String;

    invoke-static {p2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "title"

    const-string v2, "playButton"

    if-nez p2, :cond_4

    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p0, Lo/DO;->e:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lo/DO;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lo/DO;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 87
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/DO;->e:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lo/DO;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lo/DO;->b:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/AS;

    check-cast p2, Lo/Bb;

    invoke-virtual {p0, p1, p2}, Lo/DO;->a(Lo/AS;Lo/Bb;)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lo/DO;->l:Lo/BaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lo/DO;->i:Z

    .line 51
    iget-object p1, p0, Lo/DO;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lo/DO;->e()V

    return-void
.end method
