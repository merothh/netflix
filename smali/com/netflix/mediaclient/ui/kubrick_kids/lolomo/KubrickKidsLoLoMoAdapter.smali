.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.source "KubrickKidsLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    return-void
.end method

.method static updateTitleStyle(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x7f0e0084

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewColor(Landroid/widget/TextView;I)V

    const v0, 0x7f0a005a

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsLoLoMoAdapter;->updateTitleStyle(Landroid/widget/TextView;)V

    return-object v0
.end method
