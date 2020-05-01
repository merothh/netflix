.class public final Lo/WY;
.super Lo/Xc;
.source ""


# instance fields
.field private final b:Landroid/widget/Button;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/Xc;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p0}, Lo/WY;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.player_speed_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    .line 21
    invoke-virtual {p0}, Lo/WY;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ng:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.player_lock_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    .line 30
    sget-object p1, Lo/es;->b:Lo/es$Application;

    invoke-virtual {p1}, Lo/es$Application;->c()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    new-instance v3, Lo/WY$1;

    invoke-direct {v3, p0}, Lo/WY$1;-><init>(Lo/WY;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    iget-object v3, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->jX:I

    new-array v5, v1, [Ljava/lang/Object;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    :goto_0
    sget-object p1, Lo/gO;->d:Lo/gO$Activity;

    invoke-virtual {p1}, Lo/gO$Activity;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    sget-object p1, Lo/es;->b:Lo/es$Application;

    invoke-virtual {p1}, Lo/es$Application;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    iget-object v0, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->hr:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_1
    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    new-instance v0, Lo/WY$2;

    invoke-direct {v0, p0}, Lo/WY$2;-><init>(Lo/WY;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    :goto_1
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/widget/Button;

    .line 62
    iget-object v5, p0, Lo/WY;->b:Landroid/widget/Button;

    aput-object v5, p1, v2

    iget-object v2, p0, Lo/WY;->e:Landroid/widget/Button;

    aput-object v2, p1, v1

    invoke-virtual {p0}, Lo/WY;->o()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {p0}, Lo/WY;->n()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0}, Lo/WY;->s()Landroid/widget/Button;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/WY;->a(Ljava/util/List;)V

    goto :goto_2

    .line 63
    :cond_3
    iget-object p1, p0, Lo/WY;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    new-array p1, v4, [Landroid/widget/Button;

    .line 64
    iget-object v4, p0, Lo/WY;->b:Landroid/widget/Button;

    aput-object v4, p1, v2

    invoke-virtual {p0}, Lo/WY;->o()Landroid/widget/Button;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0}, Lo/WY;->n()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {p0}, Lo/WY;->s()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/WY;->a(Ljava/util/List;)V

    goto :goto_2

    .line 65
    :cond_4
    iget-object p1, p0, Lo/WY;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    new-array p1, v4, [Landroid/widget/Button;

    .line 66
    iget-object v4, p0, Lo/WY;->e:Landroid/widget/Button;

    aput-object v4, p1, v2

    invoke-virtual {p0}, Lo/WY;->o()Landroid/widget/Button;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0}, Lo/WY;->n()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {p0}, Lo/WY;->s()Landroid/widget/Button;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/WY;->a(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 84
    invoke-super {p0}, Lo/Xc;->c()V

    .line 85
    iget-object v0, p0, Lo/WY;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final c(F)V
    .locals 5

    .line 71
    iget-object v0, p0, Lo/WY;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_0

    .line 72
    iget-object v3, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->jX:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_2

    .line 74
    :goto_0
    iget-object v3, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 75
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->jV:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v1

    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    .line 77
    :cond_2
    iget-object v3, p0, Lo/WY;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->jZ:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v1

    .line 77
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 71
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dT:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 89
    invoke-super {p0}, Lo/Xc;->g()V

    .line 90
    iget-object v0, p0, Lo/WY;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
