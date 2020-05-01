.class final Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;I)V
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne p2, v0, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->b()Lo/BaseAdapter;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cB:I

    invoke-virtual {p2, v0}, Lo/BaseAdapter;->setImageResource(I)V

    .line 674
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->c()Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pa:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 675
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 677
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->b(I)Lo/BC;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 680
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lo/BC;->isProfileLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->b()Lo/BaseAdapter;

    move-result-object v0

    .line 689
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-interface {p2}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 688
    invoke-virtual {v0, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 692
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->d()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;->b()Lo/BaseAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setAlpha(F)V

    :goto_2
    return-void

    .line 677
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.user.UserProfile"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(I)Lo/BC;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

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

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Ljava/util/List;

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

    .line 633
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->b(I)Lo/BC;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 654
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fo:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 655
    new-instance p3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;

    .line 656
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/BaseAdapter;

    .line 657
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pr:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .line 658
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tG:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "newView.findViewById(R.id.top_edit_img)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->jH:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "newView.findViewById(R.id.lock_icon)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-direct {p3, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;-><init>(Lo/BaseAdapter;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 661
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;I)V

    const-string p1, "newView"

    .line 662
    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 657
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.AdvancedImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 665
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;

    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$ActionBar;I)V

    :goto_0
    return-object p2

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.profiles.ProfileSelectionFragment_Ab18161.Holder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 698
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161$Activity;->e:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V

    return-void
.end method
