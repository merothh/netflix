.class public Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.source "KubrickLoLoMoAdapter.java"


# static fields
.field private static final NUM_DUPLICATED_ROWS:I = 0xa


# instance fields
.field private final heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;->heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    return-void
.end method


# virtual methods
.method protected createHolder(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->createHolder(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)I
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;->getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)I

    move-result v0

    return v0
.end method

.method protected getShelfVisibility(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f03007f

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;->heroTitleScroller:Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->onScroll(Landroid/widget/AbsListView;)V

    return-void
.end method

.method protected updateLoMoData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->createDuplicateRows(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->updateLoMoData(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 0

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)V

    return-void
.end method

.method protected updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V

    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils;->updateRowViews(Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;I)V

    return-void
.end method
