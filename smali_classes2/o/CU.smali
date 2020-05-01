.class public final Lo/CU;
.super Lo/CT;
.source ""

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field protected g:Landroid/widget/TabHost;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lo/CT;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CT$TaskDescription;)V

    return-void
.end method

.method private a(Landroid/content/Context;IZ)Landroid/view/View;
    .locals 3

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cj:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 143
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sR:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const-string p2, "nf_language_selector"

    if-eqz p3, :cond_0

    const-string p3, "Set audio tab label"

    .line 147
    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v0, p0, Lo/CU;->j:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string p3, "Set subtitle tab label"

    .line 150
    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object v0, p0, Lo/CU;->i:Landroid/widget/TextView;

    :goto_0
    return-object p1
.end method

.method private e(Landroid/widget/TabHost;Ljava/lang/String;IIZ)V
    .locals 1

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    .line 136
    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3, p5}, Lo/CU;->a(Landroid/content/Context;IZ)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 137
    invoke-virtual {p2, p4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected c(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 12

    .line 107
    invoke-super {p0, p1, p2}, Lo/CT;->c(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    const-string p2, "nf_language_selector"

    const-string v0, "Add tabhost"

    .line 109
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sU:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    .line 111
    iget-object p1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 112
    iget-object p1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 114
    iget-object v1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->em:I

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->z:I

    const-string v2, "ListAudios"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/CU;->e(Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    .line 115
    iget-object v7, p0, Lo/CU;->g:Landroid/widget/TabHost;

    sget v9, Lcom/netflix/mediaclient/ui/R$AssistContent;->kf:I

    sget v10, Lcom/netflix/mediaclient/ui/R$Fragment;->sH:I

    const-string v8, "ListSubtitles"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lo/CU;->e(Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    .line 118
    iget-object p1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 119
    iget-object p1, p0, Lo/CU;->g:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 121
    iget-object p1, p0, Lo/CU;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 122
    iget-object p1, p0, Lo/CU;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string p1, "Done with tabhost"

    .line 124
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e()I
    .locals 2

    const-string v0, "nf_language_selector"

    const-string v1, "Phone R.layout.language_selector_dialog"

    .line 161
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cn:I

    return v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6

    const-string v0, "ListAudios"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x4

    const-string v1, "subtitle label is NULL!"

    const/4 v2, 0x1

    const-string v3, "audio label is NULL!"

    const/4 v4, 0x0

    const-string v5, "nf_language_selector"

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lo/CU;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v5, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    iget-object p1, p0, Lo/CU;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v5, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    iget-object p1, p0, Lo/CU;->b:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lo/CU;->b:Landroid/widget/ListView;

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 79
    :cond_2
    iget-object p1, p0, Lo/CU;->a:Landroid/widget/ListView;

    if-eqz p1, :cond_7

    .line 80
    iget-object p1, p0, Lo/CU;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_4

    .line 83
    :cond_3
    iget-object p1, p0, Lo/CU;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 86
    :cond_4
    invoke-static {v5, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_2
    iget-object p1, p0, Lo/CU;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    .line 91
    :cond_5
    invoke-static {v5, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_3
    iget-object p1, p0, Lo/CU;->b:Landroid/widget/ListView;

    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lo/CU;->b:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    :cond_6
    iget-object p1, p0, Lo/CU;->a:Landroid/widget/ListView;

    if-eqz p1, :cond_7

    .line 100
    iget-object p1, p0, Lo/CU;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method
