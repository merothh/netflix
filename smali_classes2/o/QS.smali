.class public Lo/QS;
.super Lo/NetworkOnMainThreadException;
.source ""


# instance fields
.field e:Lo/ImageSwitcher;

.field f:Landroid/widget/ProgressBar;

.field i:Landroid/graphics/drawable/AnimationDrawable;

.field j:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/NetworkOnMainThreadException;-><init>(Landroid/view/ViewGroup;)V

    .line 30
    invoke-direct {p0, p1}, Lo/QS;->d(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 3

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dg:I

    .line 38
    invoke-virtual {p0}, Lo/QS;->c()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/NetworkOnMainThreadException$StateListAnimator;->b()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException$StateListAnimator;->b()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rZ:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/QS;->e:Lo/ImageSwitcher;

    .line 42
    invoke-virtual {p0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException$StateListAnimator;->b()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sb:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lo/QS;->f:Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {p0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lo/NetworkOnMainThreadException$StateListAnimator;->b()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rT:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/QS;->j:Landroid/widget/ImageView;

    .line 45
    iget-object p1, p0, Lo/QS;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    iget-object v0, p0, Lo/QS;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static e(Landroid/view/View;Ljava/lang/CharSequence;III)Lo/QS;
    .locals 1

    .line 56
    invoke-static {p0}, Lo/QS;->e(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 58
    new-instance v0, Lo/QS;

    invoke-direct {v0, p0}, Lo/QS;-><init>(Landroid/view/ViewGroup;)V

    .line 59
    invoke-virtual {v0, p1}, Lo/QS;->c(Ljava/lang/CharSequence;)Lo/NetworkOnMainThreadException;

    .line 60
    invoke-virtual {v0, p2}, Lo/QS;->b(I)Lo/NetworkOnMainThreadException;

    .line 61
    invoke-virtual {v0, p3}, Lo/QS;->d(I)Lo/NetworkOnMainThreadException;

    .line 62
    invoke-virtual {v0, p4}, Lo/QS;->a(I)Lo/NetworkOnMainThreadException;

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lo/NetworkOnMainThreadException$StateListAnimator;->a()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 66
    invoke-virtual {v0}, Lo/QS;->a()Lo/NetworkOnMainThreadException$StateListAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lo/NetworkOnMainThreadException$StateListAnimator;->setMaxWidth(I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c(IZ)V
    .locals 2

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 81
    iget-object v0, p0, Lo/QS;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lo/QS;->e:Lo/ImageSwitcher;

    invoke-static {p1}, Lo/aeE;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lo/QS;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 86
    iget-object p1, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lo/QS;->l()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lo/QS;->e:Lo/ImageSwitcher;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lo/QS;->j:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 110
    iget-object v0, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/QS;->e:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lo/QS;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lo/QS;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 117
    iget-object v0, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public l()V
    .locals 2

    .line 124
    iget-object v0, p0, Lo/QS;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/QS;->i:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lo/QS;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
