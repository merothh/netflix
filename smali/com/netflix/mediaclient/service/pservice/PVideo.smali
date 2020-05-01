.class public Lcom/netflix/mediaclient/service/pservice/PVideo;
.super Ljava/lang/Object;
.source "PVideo.java"


# instance fields
.field public boxartUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "boxartUrl"
    .end annotation
.end field

.field public horzDispUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horzDispUrl"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isAgeProtected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAgeProtected"
    .end annotation
.end field

.field public isAutoPlayEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAutoPlayEnabled"
    .end annotation
.end field

.field public isEpisode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEpisode"
    .end annotation
.end field

.field public isNextPlayableEpisode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNextPlayableEpisode"
    .end annotation
.end field

.field public isPinProtected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPinProtected"
    .end annotation
.end field

.field public isPlayable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPlayable"
    .end annotation
.end field

.field public isPlayableEpisode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPlayableEpisode"
    .end annotation
.end field

.field public playableEndtime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableEndtime"
    .end annotation
.end field

.field public playableEpisodeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableEpisodeNumber"
    .end annotation
.end field

.field public playableId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableId"
    .end annotation
.end field

.field public playableParentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableParentId"
    .end annotation
.end field

.field public playableParentTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableParentTitle"
    .end annotation
.end field

.field public playableRuntime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableRuntime"
    .end annotation
.end field

.field public playableSeasonNumAbbrLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableSeasonNumAbbrLabel"
    .end annotation
.end field

.field public playableSeasonNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableSeasonNumber"
    .end annotation
.end field

.field public playableTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableTitle"
    .end annotation
.end field

.field public plyableBookmarkPos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plyableBookmarkPos"
    .end annotation
.end field

.field public storyImgDispUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storyImgDispUrl"
    .end annotation
.end field

.field public synopsis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "synopsis"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public trickplayUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trickplayUrl"
    .end annotation
.end field

.field public tvCardUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tvCardUrl"
    .end annotation
.end field

.field public videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PVideo;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V

    .line 144
    invoke-direct {p0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PVideo;->copyPlayableInfo(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PVideo;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V

    .line 138
    invoke-direct {p0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PVideo;->copyPlayableInfo(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 139
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/UriUtil;->buildStillUrlFromPos(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->trickplayUrl:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    .line 103
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->boxartUrl:Ljava/lang/String;

    .line 104
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getStoryDispUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->storyImgDispUrl:Ljava/lang/String;

    .line 105
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->tvCardUrl:Ljava/lang/String;

    .line 106
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->horzDispUrl:Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 108
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private copyPlayableInfo(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isPlayable:Z

    .line 113
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isPlayableEpisode:Z

    .line 114
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNextPlayableEpisode()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isNextPlayableEpisode:Z

    .line 115
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAutoPlayEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isAutoPlayEnabled:Z

    .line 116
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAgeProtected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isAgeProtected:Z

    .line 117
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPinProtected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isPinProtected:Z

    .line 119
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->plyableBookmarkPos:I

    .line 120
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableRuntime:I

    .line 121
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableEndtime:I

    .line 123
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    .line 124
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableTitle:Ljava/lang/String;

    .line 126
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableParentId:Ljava/lang/String;

    .line 127
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableParentTitle:Ljava/lang/String;

    .line 129
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableEpisodeNumber:I

    .line 130
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v0

    iput v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableSeasonNumber:I

    .line 131
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableSeasonNumAbbrLabel:Ljava/lang/String;

    .line 133
    return-object p1
.end method
