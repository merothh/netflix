.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.source "KubrickHighDensityLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 25
    const v1, 0x7f0a0227

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 26
    return-object v0
.end method
