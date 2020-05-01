.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;
.super Ljava/lang/Object;
.source "BarkerVideoDetailsViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f00af

    if-ne v0, v1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;

    .line 462
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    .line 463
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showRelatedTitles()V

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setRelatedTextAsSelected()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f00ad

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;

    .line 469
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    .line 470
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->showCurrentSeason()V

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsViewGroup;->setEpisodesTextAsSelected()V

    goto :goto_0
.end method
