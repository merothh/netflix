.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsGenreLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;
.source "KubrickKidsGenreLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lolomo/KubrickKidsLoLoMoAdapter;->updateTitleStyle(Landroid/widget/TextView;)V

    return-object v0
.end method
