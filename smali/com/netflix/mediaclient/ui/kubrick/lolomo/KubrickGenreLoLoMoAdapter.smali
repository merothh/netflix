.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;
.source "KubrickGenreLoLoMoAdapter.java"


# static fields
.field private static final NUM_DUPLICATED_ROWS:I = 0x1


# instance fields
.field private final heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

.field private final showHeroImages:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    .line 25
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->showHeroImages:Z

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    .line 27
    return-void
.end method


# virtual methods
.method protected createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->createHolder(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getViewLayoutId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f03007f

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->onScroll(Landroid/widget/AbsListView;)V

    .line 53
    return-void
.end method

.method protected updateLoMoData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->showHeroImages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->createDuplicateRows(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->updateLoMoData(Ljava/util/List;)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickGenreLoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;I)V

    return-void
.end method

.method protected updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;I)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    .line 42
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)V

    .line 43
    return-void
.end method
