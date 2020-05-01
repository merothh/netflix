.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
.super Ljava/lang/Object;
.source "RealmVideoDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
.implements Lio/realm/RealmModel;
.implements Lio/realm/RealmVideoDetailsRealmProxyInterface;


# instance fields
.field private actors:Ljava/lang/String;

.field private bifUrl:Ljava/lang/String;

.field private boxartImageId:Ljava/lang/String;

.field private boxshotUrl:Ljava/lang/String;

.field private catalogIdUrl:Ljava/lang/String;

.field private cert:Ljava/lang/String;

.field private copyright:Ljava/lang/String;

.field private defaultTrailer:Ljava/lang/String;

.field private errorType:I

.field private genres:Ljava/lang/String;

.field private hResLandBoxArtUrl:Ljava/lang/String;

.field private hResPortBoxArtUrl:Ljava/lang/String;

.field private hasTrailers:Z

.field private hasWatched:Z

.field private horzDispSmallUrl:Ljava/lang/String;

.field private horzDispUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isInQueue:Z

.field private isOriginal:Z

.field private isPreRelease:Z

.field private isVideo3D:Z

.field private isVideo5dot1:Z

.field private isVideoDolbyVision:Z

.field private isVideoHd:Z

.field private isVideoHdr10:Z

.field private isVideoUhd:Z

.field private maturityLevel:I

.field private playable:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

.field private predictedRating:F

.field private profileId:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private seasonLabels:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;",
            ">;"
        }
    .end annotation
.end field

.field private seasonNumber:I

.field private storyDispUrl:Ljava/lang/String;

.field private storyUrl:Ljava/lang/String;

.field private supplMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleCroppedImgUrl:Ljava/lang/String;

.field private titleImgUrl:Ljava/lang/String;

.field private tvCardUrl:Ljava/lang/String;

.field private userRating:F

.field private videoType:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$profileId(Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;)Lio/realm/RealmList;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lio/realm/RealmList;)Lio/realm/RealmList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$seasonLabels(Lio/realm/RealmList;)V

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->setPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    return-void
.end method

.method public static insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/netflix/mediaclient/service/NetflixService;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;

    invoke-direct {v0, p2, p4, p3, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/service/NetflixService;)V

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    :cond_0
    return-void
.end method

.method private setPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    return-void
.end method


# virtual methods
.method public fillForRealm(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$year(I)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getMaturityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$maturityLevel(I)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$synopsis(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getQuality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$quality(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getActors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$actors(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getGenres()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$genres(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCertification()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$cert(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$supplMessage(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getDefaultTrailer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$defaultTrailer(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$copyright(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$boxshotUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$boxartImageId(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getInterestingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$horzDispUrl(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHorzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$horzDispSmallUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryDispUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$storyDispUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$tvCardUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$storyUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBifUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$bifUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCatalogIdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$catalogIdUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$titleImgUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleCroppedImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$titleCroppedImgUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$title(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isOriginal()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isOriginal(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isPreRelease()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isPreRelease(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasWatched()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$hasWatched(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasTrailers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$hasTrailers(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isInQueue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isInQueue(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideoHd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideoHd(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideoUhd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideoUhd(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideo3D()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideo3D(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideo5dot1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideo5dot1(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideoHdr10()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideoHdr10(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isVideoDolbyVision()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$isVideoDolbyVision(Z)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getUserRating()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$userRating(F)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPredictedRating()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$predictedRating(F)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$errorType(I)V

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$seasonNumber(I)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$videoType(I)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$horzDispUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getActors()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$actors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvisories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->getAdvisories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$cert()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$copyright()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$errorType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->getExpirationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$genres()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$maturityLevel()I

    move-result v0

    return v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v0

    return-object v0
.end method

.method public getPredictedRating()F
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$predictedRating()F

    move-result v0

    return v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$profileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$quality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmHorzDispUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalFileForVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RealmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRealmHorzDispUrl filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeasonLongLabel(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$seasonLabels()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->getNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$videoType()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public getUserRating()F
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$userRating()F

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$year()I

    move-result v0

    return v0
.end method

.method public hasTrailers()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hasTrailers()Z

    move-result v0

    return v0
.end method

.method public hasWatched()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hasWatched()Z

    move-result v0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAvailableToStream()Z

    move-result v0

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isInQueue()Z

    move-result v0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isNSRE()Z

    move-result v0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isPreRelease()Z

    move-result v0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideo3D()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideo3D()Z

    move-result v0

    return v0
.end method

.method public isVideo5dot1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideo5dot1()Z

    move-result v0

    return v0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoDolbyVision()Z

    move-result v0

    return v0
.end method

.method public isVideoHd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoHd()Z

    move-result v0

    return v0
.end method

.method public isVideoHdr10()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoHdr10()Z

    move-result v0

    return v0
.end method

.method public isVideoUhd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoUhd()Z

    move-result v0

    return v0
.end method

.method public realmGet$actors()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->actors:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$bifUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->bifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$boxartImageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->boxartImageId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$boxshotUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->boxshotUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$catalogIdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->catalogIdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$copyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$defaultTrailer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->defaultTrailer:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$errorType()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->errorType:I

    return v0
.end method

.method public realmGet$genres()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->genres:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hResLandBoxArtUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hResLandBoxArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hResPortBoxArtUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hResPortBoxArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$hasTrailers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hasTrailers:Z

    return v0
.end method

.method public realmGet$hasWatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hasWatched:Z

    return v0
.end method

.method public realmGet$horzDispSmallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->horzDispSmallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$horzDispUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->horzDispUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isInQueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isInQueue:Z

    return v0
.end method

.method public realmGet$isOriginal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isOriginal:Z

    return v0
.end method

.method public realmGet$isPreRelease()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isPreRelease:Z

    return v0
.end method

.method public realmGet$isVideo3D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideo3D:Z

    return v0
.end method

.method public realmGet$isVideo5dot1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideo5dot1:Z

    return v0
.end method

.method public realmGet$isVideoDolbyVision()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoDolbyVision:Z

    return v0
.end method

.method public realmGet$isVideoHd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoHd:Z

    return v0
.end method

.method public realmGet$isVideoHdr10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoHdr10:Z

    return v0
.end method

.method public realmGet$isVideoUhd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoUhd:Z

    return v0
.end method

.method public realmGet$maturityLevel()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->maturityLevel:I

    return v0
.end method

.method public realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    return-object v0
.end method

.method public realmGet$predictedRating()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->predictedRating:F

    return v0
.end method

.method public realmGet$profileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$quality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$seasonLabels()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->seasonLabels:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$seasonNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->seasonNumber:I

    return v0
.end method

.method public realmGet$storyDispUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->storyDispUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$storyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->storyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$supplMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->supplMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$synopsis()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$titleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->titleCroppedImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$titleImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->titleImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tvCardUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->tvCardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$userRating()F
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->userRating:F

    return v0
.end method

.method public realmGet$videoType()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->videoType:I

    return v0
.end method

.method public realmGet$year()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->year:I

    return v0
.end method

.method public realmSet$actors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->actors:Ljava/lang/String;

    return-void
.end method

.method public realmSet$bifUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->bifUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$boxartImageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->boxartImageId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$boxshotUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->boxshotUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$catalogIdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->catalogIdUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->cert:Ljava/lang/String;

    return-void
.end method

.method public realmSet$copyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->copyright:Ljava/lang/String;

    return-void
.end method

.method public realmSet$defaultTrailer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->defaultTrailer:Ljava/lang/String;

    return-void
.end method

.method public realmSet$errorType(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->errorType:I

    return-void
.end method

.method public realmSet$genres(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->genres:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hResLandBoxArtUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hResLandBoxArtUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hResPortBoxArtUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hResPortBoxArtUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$hasTrailers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hasTrailers:Z

    return-void
.end method

.method public realmSet$hasWatched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->hasWatched:Z

    return-void
.end method

.method public realmSet$horzDispSmallUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->horzDispSmallUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$horzDispUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->horzDispUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isInQueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isInQueue:Z

    return-void
.end method

.method public realmSet$isOriginal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isOriginal:Z

    return-void
.end method

.method public realmSet$isPreRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isPreRelease:Z

    return-void
.end method

.method public realmSet$isVideo3D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideo3D:Z

    return-void
.end method

.method public realmSet$isVideo5dot1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideo5dot1:Z

    return-void
.end method

.method public realmSet$isVideoDolbyVision(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoDolbyVision:Z

    return-void
.end method

.method public realmSet$isVideoHd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoHd:Z

    return-void
.end method

.method public realmSet$isVideoHdr10(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoHdr10:Z

    return-void
.end method

.method public realmSet$isVideoUhd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->isVideoUhd:Z

    return-void
.end method

.method public realmSet$maturityLevel(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->maturityLevel:I

    return-void
.end method

.method public realmSet$playable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    return-void
.end method

.method public realmSet$predictedRating(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->predictedRating:F

    return-void
.end method

.method public realmSet$profileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->profileId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$quality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->quality:Ljava/lang/String;

    return-void
.end method

.method public realmSet$seasonLabels(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->seasonLabels:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$seasonNumber(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->seasonNumber:I

    return-void
.end method

.method public realmSet$storyDispUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->storyDispUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$storyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->storyUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$supplMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->supplMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$synopsis(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->synopsis:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$titleCroppedImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->titleCroppedImgUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$titleImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->titleImgUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tvCardUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->tvCardUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$userRating(F)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->userRating:F

    return-void
.end method

.method public realmSet$videoType(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->videoType:I

    return-void
.end method

.method public realmSet$year(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->year:I

    return-void
.end method

.method public setPlayableAndVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->setPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$videoType(I)V

    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setUserRating(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmSet$userRating(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RealmVideoDetails{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$year()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maturityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$maturityLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", synopsis=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$synopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quality=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$quality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actors=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$actors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genres=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$genres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cert=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$cert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supplMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$supplMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", defaultTrailer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$defaultTrailer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", copyright=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$copyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hResPortBoxArtUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hResPortBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hResLandBoxArtUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hResLandBoxArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boxshotUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$boxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boxartImageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$boxartImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", horzDispUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$horzDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", horzDispSmallUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$horzDispSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", storyDispUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$storyDispUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tvCardUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$tvCardUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", storyUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$storyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bifUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$bifUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", catalogIdUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$catalogIdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", titleImgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$titleImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", titleCroppedImgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$titleCroppedImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isOriginal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPreRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isPreRelease()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hasWatched()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasTrailers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$hasTrailers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isInQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isInQueue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideoHd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoHd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideoUhd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoUhd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideo3D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideo3D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideo5dot1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideo5dot1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideoHdr10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoHdr10()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVideoDolbyVision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$isVideoDolbyVision()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$userRating()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", predictedRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$predictedRating()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$playable()Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$errorType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->realmGet$videoType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
