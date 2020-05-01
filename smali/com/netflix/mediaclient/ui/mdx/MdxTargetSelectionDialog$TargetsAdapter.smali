.class Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MdxTargetSelectionDialog.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private selectedIndex:I

.field private subText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;

    const v0, 0x7f0f01de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f01df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->selectedIndex:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->subTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->subText:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->subTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->subText:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToSelected(Landroid/widget/TextView;)V

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToSelected(Landroid/widget/TextView;)V

    :goto_4
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToUnselected(Landroid/widget/TextView;)V

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$ViewHolder;->subTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextOpacityToUnselected(Landroid/widget/TextView;)V

    goto :goto_4
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->data:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->selectedIndex:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->subText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$TargetsAdapter;->notifyDataSetChanged()V

    return-void
.end method
