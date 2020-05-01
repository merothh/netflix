.class public Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;
.super Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
.source "InteractiveMomentsDecorator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractiveMomentsDecorator"


# instance fields
.field private bottomPanelVisible:Z

.field private data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

.field private interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

.field private mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->init()V

    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;-><init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->onMomentsFetched(Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V

    return-void
.end method

.method private static getAudioLanguageForAudioSource(Lcom/netflix/mediaclient/media/AudioSource;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getCurrentAudioLanguage(Lcom/netflix/mediaclient/media/Language;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getAudioLanguageForAudioSource(Lcom/netflix/mediaclient/media/AudioSource;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getVideoId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v1, :cond_1

    const-string/jumbo v1, "InteractiveMomentsDecorator"

    const-string/jumbo v2, "Player fragment is null. This should not happen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v1, :cond_1

    const-string/jumbo v1, "InteractiveMomentsDecorator"

    const-string/jumbo v2, "Player fragment is null. This should not happen"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    const-string/jumbo v0, "InteractiveMomentsDecorator"

    const-string/jumbo v1, "Player fragment is null. This should not happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    goto :goto_0
.end method

.method private isManagerReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->isManagerReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMomentsFetched(Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InteractiveMomentsDecorator"

    const-string/jumbo v1, "Interactive moments data is empty."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onStop()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onDestroy()V

    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsFactory;->getManager(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-nez v0, :cond_4

    const-string/jumbo v0, "InteractiveMomentsDecorator"

    const-string/jumbo v1, "Interactive moments manager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->init(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onMomentsFetched(Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    goto :goto_0
.end method

.method private requestInteractiveMoments(Ljava/lang/String;)V
    .locals 7

    const/4 v3, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InteractiveMomentsDecorator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching interactive moments with audioLanguage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->hide()V

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/device/yearclass/YearClass;->get(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator$1;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator$1;-><init>(Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    return-void

    :cond_2
    move-object v3, v0

    move-object v4, v1

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getCurrentAudioLanguage(Lcom/netflix/mediaclient/media/Language;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getAudioLanguageForAudioSource(Lcom/netflix/mediaclient/media/AudioSource;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "InteractiveMomentsDecorator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating audio language - selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->requestInteractiveMoments(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onStop()V

    :cond_0
    return-void
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    :cond_0
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->bottomPanelVisible:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->playerOverlayVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setTimelineMaxProgress(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    const-string/jumbo v0, "InteractiveMomentsDecorator"

    const-string/jumbo v1, "Not fetching interactive moments because mFragment is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->getCurrentAudioLanguage(Lcom/netflix/mediaclient/media/Language;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->requestInteractiveMoments(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimelineProgress(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/InteractiveMomentsDecorator;->interactiveMomentsManager:Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;->setTimelineProgress(IZ)V

    :cond_0
    return-void
.end method
