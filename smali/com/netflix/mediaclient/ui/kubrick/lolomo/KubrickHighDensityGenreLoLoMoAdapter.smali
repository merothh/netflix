.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickHighDensityGenreLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;
.source "KubrickHighDensityGenreLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 20
    const v1, 0x7f0a0227

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 21
    return-object v0
.end method
