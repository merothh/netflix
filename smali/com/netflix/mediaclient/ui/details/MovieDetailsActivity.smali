.class public Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.source "MovieDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final EXTRA_BACK_STACK:Ljava/lang/String; = "extra_back_stack"

.field private static final TAG:Ljava/lang/String; = "MovieDetailsActivity"


# instance fields
.field private final backStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private showDetailsFragInFuture:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    return-void
.end method

.method private handleNewVideoId()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/details/ILayoutManager;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/ILayoutManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/ILayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 140
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string/jumbo v0, "MovieDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding curr video to back stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setVideoId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_playcontext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 149
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_action_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setAction(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private showNewDetailsFrag(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->createPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setPrimaryFrag(Landroid/app/Fragment;)V

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setLayoutManagerSavedState(Landroid/os/Parcelable;)V

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 167
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 168
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->addBackStackTransitionAnimation(Landroid/app/Fragment;Z)V

    .line 169
    const v0, 0x7f0f011b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v1

    const-string/jumbo v3, "primary"

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 173
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/16 v0, 0x1003

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 177
    :cond_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 182
    :cond_1
    return-void

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addBackStackTransitionAnimation(Landroid/app/Fragment;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->isTransitionAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance v1, Lcom/netflix/mediaclient/util/gfx/SlideTransition;

    invoke-direct {v1}, Lcom/netflix/mediaclient/util/gfx/SlideTransition;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ScaleTransition;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/gfx/ScaleTransition;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 196
    invoke-virtual {p1, v1}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 199
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 193
    goto :goto_0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    move-result-object v0

    return-object v0
.end method

.method public destroyed()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, "MovieDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Back pressed, backStack size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "MovieDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Back stack data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setVideoId(Ljava/lang/String;)V

    .line 85
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 86
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->layoutManagerState:Landroid/os/Parcelable;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showNewDetailsFrag(Landroid/os/Parcelable;)V

    .line 87
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_1
    const-string/jumbo v0, "MovieDetailsActivity"

    const-string/jumbo v1, "No more videos in back stack, finishing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p1, :cond_0

    const-string/jumbo v0, "extra_back_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "extra_back_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 49
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->handleNewVideoId()V

    .line 53
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 99
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showDetailsFragInFuture:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showNewDetailsFrag(Landroid/os/Parcelable;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showDetailsFragInFuture:Z

    .line 104
    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 110
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "MovieDetailsActivity"

    const-string/jumbo v1, "onNewIntent: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 59
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->setIntent(Landroid/content/Intent;)V

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->handleNewVideoId()V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showDetailsFragInFuture:Z

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->startDPTTISession()V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->showNewDetailsFrag(Landroid/os/Parcelable;)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->registerLoadingStatusCallback()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string/jumbo v0, "extra_back_stack"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->backStack:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    return-void
.end method
