.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.source "KubrickKidsLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    .line 20
    return-void
.end method

.method static updateTitleStyle(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0e0084

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 31
    const v0, 0x7f0a005a

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 32
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 33
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsLoLoMoAdapter;->updateTitleStyle(Landroid/widget/TextView;)V

    .line 26
    return-object v0
.end method
