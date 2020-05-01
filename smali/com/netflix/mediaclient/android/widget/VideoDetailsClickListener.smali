.class public Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.super Ljava/lang/Object;
.source "VideoDetailsClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailsClickListener"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 34
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    .line 35
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "DeetsClickListener"

    invoke-static {p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 39
    const v0, 0x7f0f001d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string/jumbo v0, "VideoDetailsClickListener"

    const-string/jumbo v1, "No video details for click listener to use"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 44
    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 45
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->playContextProvider:Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    const v0, 0x7f0f001d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string/jumbo v0, "VideoDetailsClickListener"

    const-string/jumbo v1, "Removing click listeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    const v0, 0x7f0f001d

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-direct {v0, p3, p0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    const v0, 0x7f0f001d

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    return-void
.end method
