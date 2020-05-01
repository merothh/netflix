.class public abstract Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.super Landroid/widget/LinearLayout;
.source "PostPlayItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract findViews()V
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->findViews()V

    .line 35
    return-void
.end method

.method public onTick(I)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected abstract startTimer(I)V
.end method

.method protected abstract stopTimer()V
.end method

.method public abstract updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
.end method
