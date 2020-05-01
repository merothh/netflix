.class public Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;
.super Ljava/lang/Object;
.source "SafeSubtitleManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 33
    return-void
.end method

.method private declared-synchronized getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    .locals 2

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;->createInstance(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldCreateNewSubtitleManager(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Old profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", newProfile "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 79
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Existing manager can handle new profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", yes? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    if-nez v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 77
    goto :goto_0

    :cond_3
    move v1, v2

    .line 83
    goto :goto_1
.end method


# virtual methods
.method public canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clear()V

    .line 110
    :cond_0
    return-void
.end method

.method public clearPendingUpdates()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clearPendingUpdates()V

    .line 122
    :cond_0
    return-void
.end method

.method public getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayerOverlayVisibiltyChange(Z)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onPlayerOverlayVisibiltyChange(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public declared-synchronized onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;->getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->shouldCreateNewSubtitleManager(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "========> Create new subtitle manager!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->clear()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mPlayerFrag:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;->createInstance(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->mSubtitleManager:Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_2
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSubtitleRemove()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->onSubtitleRemove()V

    .line 46
    :cond_0
    return-void
.end method

.method public setSubtitleVisibility(Z)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->getRealSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 96
    :cond_0
    return-void
.end method
