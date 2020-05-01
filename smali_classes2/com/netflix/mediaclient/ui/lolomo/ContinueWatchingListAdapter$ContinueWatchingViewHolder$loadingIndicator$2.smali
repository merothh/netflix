.class public final Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JU$Activity;-><init>(Landroid/view/ViewGroup;Lo/Lk;Lo/PatternMatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/WebHistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic e:Lo/JU$Activity;


# direct methods
.method public constructor <init>(Lo/JU$Activity;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;->e:Lo/JU$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;->d:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lo/WebHistoryItem;
    .locals 5

    .line 164
    new-instance v0, Lo/WebHistoryItem;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/WebHistoryItem;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 166
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;->e:Lo/JU$Activity;

    invoke-static {v2}, Lo/JU$Activity;->d(Lo/JU$Activity;)Landroid/widget/FrameLayout;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;->c()Lo/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method
