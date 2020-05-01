.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;)V
    .locals 0

    .line 821
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)Lo/BC;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BC;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 821
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->a(I)Lo/BC;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 842
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->fo:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 843
    new-instance p3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pi:I

    .line 845
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    .line 846
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lo/BaseAdapter;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pr:I

    .line 847
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tG:I

    .line 848
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->jH:I

    .line 849
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;-><init>(Landroid/view/ViewGroup;Lo/BaseAdapter;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 843
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 852
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;

    .line 853
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->a(I)Lo/BC;

    move-result-object v1

    .line 855
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_2

    .line 857
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cB:I

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setImageResource(I)V

    .line 858
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pa:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 859
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 860
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/BaseAdapter;->setAlpha(F)V

    .line 861
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_3

    .line 864
    :cond_2
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-interface {v1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-static {}, Lo/ady;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lo/BC;->isProfileLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 867
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 869
    :cond_3
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 871
    :goto_1
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;

    move-result-object p1

    invoke-interface {v1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 874
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 875
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 876
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 877
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;

    move-result-object p1

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result p3

    if-eqz p3, :cond_5

    const v5, 0x3e4ccccd    # 0.2f

    :cond_5
    invoke-virtual {p1, v5}, Lo/BaseAdapter;->setAlpha(F)V

    goto :goto_3

    .line 879
    :cond_6
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 880
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 881
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;)Lo/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/BaseAdapter;->setAlpha(F)V

    :goto_3
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 890
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-void
.end method
