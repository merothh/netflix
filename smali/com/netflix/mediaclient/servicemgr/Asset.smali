.class public Lcom/netflix/mediaclient/servicemgr/Asset;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/ui/common/PlayContext;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/Asset;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_AUTOPLAY_MAX_COUNT:Ljava/lang/String; = "autoPlayMaxCount"

.field public static final PARAM_DURATION:Ljava/lang/String; = "duration"

.field public static final PARAM_ENDTIME:Ljava/lang/String; = "endtime"

.field public static final PARAM_EP_BOOKMARK:Ljava/lang/String; = "playback_bookmark"

.field public static final PARAM_EP_BOOKMARK_TS:Ljava/lang/String; = "watched_date"

.field public static final PARAM_EP_EPISODE_NUMBER:Ljava/lang/String; = "episodeNumber"

.field public static final PARAM_EP_SEASON_NUMBER:Ljava/lang/String; = "seasonNumber"

.field public static final PARAM_EXPIRATION_TIME:Ljava/lang/String; = "expirationTime"

.field public static final PARAM_IS_ADVISORY_DISABLED:Ljava/lang/String; = "isAdvisoryDisabled"

.field public static final PARAM_IS_AGE_PROTECTED:Ljava/lang/String; = "isAgeProtected"

.field public static final PARAM_IS_AUTOPLAY:Ljava/lang/String; = "isAutoPlayEnabled"

.field public static final PARAM_IS_BROWSE_PLAY:Ljava/lang/String; = "isBrowsePlay"

.field public static final PARAM_IS_EPISODE:Ljava/lang/String; = "isEpisode"

.field public static final PARAM_IS_EXEMPT_INTERRUPTER_LIMIT:Ljava/lang/String; = "isExemptFromInterrupterLimit"

.field public static final PARAM_IS_NEXT_EPISODE:Ljava/lang/String; = "isNextPlayableEpisode"

.field public static final PARAM_IS_NSRE:Ljava/lang/String; = "isNSRE"

.field public static final PARAM_IS_PIN_PROTECTED:Ljava/lang/String; = "isPinProtected"

.field public static final PARAM_IS_PIN_VERIFIED:Ljava/lang/String; = "isPinVerified"

.field public static final PARAM_IS_SUPPLEMENTAL_VIDEO:Ljava/lang/String; = "isSupplementalVideo"

.field public static final PARAM_LIST_POS:Ljava/lang/String; = "listpos"

.field public static final PARAM_LOGICAL_START:Ljava/lang/String; = "logicalStart"

.field public static final PARAM_OFFLINE_AVAILABLE:Ljava/lang/String; = "offlineAvailable"

.field public static final PARAM_ORIGINAL_URL:Ljava/lang/String; = "nflx"

.field public static final PARAM_PARENT_ID:Ljava/lang/String; = "parentid"

.field public static final PARAM_PARENT_TITLE:Ljava/lang/String; = "parent_title"

.field public static final PARAM_PLAYABLE_ID:Ljava/lang/String; = "playableid"

.field public static final PARAM_PLAY_REQUEST_LOCATION:Ljava/lang/String; = "playLocation"

.field public static final PARAM_POSTPLAY_COUNT:Ljava/lang/String; = "postPlayCount"

.field public static final PARAM_REQ_ID:Ljava/lang/String; = "reqid"

.field public static final PARAM_SEASON_NUM_ABBR_LABEL:Ljava/lang/String; = "seasonNumAbbrLabel"

.field public static final PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_TRK_ID:Ljava/lang/String; = "trkid"

.field public static final PARAM_VIDEO_POS:Ljava/lang/String; = "videopos"

.field private static final TAG:Ljava/lang/String; = "nf_asset"


# instance fields
.field private mAutoPlayMaxCount:I

.field private mDuration:I

.field private mEndtime:I

.field private mEpisodeNumber:I

.field private mExpirationTime:J

.field private mIsAdvisoryDisabled:Z

.field private mIsAgeProtected:Z

.field private mIsAutoPlayEnabled:Z

.field private mIsAvailableOffline:Z

.field private mIsBrowsePlay:Z

.field private mIsEpisode:Z

.field private mIsExemptFromInterrupterLimit:Z

.field private mIsNSRE:Z

.field private mIsNextPlayableEpisode:Z

.field private mIsPinProtected:Z

.field private mIsPinVerified:Z

.field private mIsSupplementalVideo:Z

.field private mListPos:I

.field private mLogicalStart:I

.field private mNflx:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;

.field private mParentTitle:Ljava/lang/String;

.field private mPlayLocation:Ljava/lang/String;

.field private mPlayableId:Ljava/lang/String;

.field private mPlaybackBookmark:I

.field private mPostPlayVideoPlayed:I

.field private mReqId:Ljava/lang/String;

.field private mSeasonAbbrSeqLabel:Ljava/lang/String;

.field private mSeasonNumber:I

.field private mTitle:Ljava/lang/String;

.field private mTrackId:I

.field private mVideoPos:I

.field private mWatchedDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/servicemgr/Asset$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_asset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ASSET: create asset from playable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkUpdateTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getLogicalStart()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNSRE()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isSupplementalVideo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAutoPlayEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isExemptFromInterrupterLimit()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getAutoPlayMaxCount()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNextPlayableEpisode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAgeProtected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPinProtected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getExpirationTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAdvisoryDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getBrowsePlay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_asset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ASSET: created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean p2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    return-object v0
.end method

.method public static createForPostPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 6

    invoke-static {p0, p1, p3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iput p2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    const-string/jumbo v1, "nf_asset"

    const-string/jumbo v2, "%s postPlay start set to logicalPos: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>()V

    const-string/jumbo v1, "playableid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    const-string/jumbo v1, "parentid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    const-string/jumbo v1, "isNSRE"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    const-string/jumbo v1, "isEpisode"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    const-string/jumbo v1, "isSupplementalVideo"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    const-string/jumbo v1, "trkid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    const-string/jumbo v1, "title"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    const-string/jumbo v1, "parent_title"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    const-string/jumbo v1, "nflx"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    const-string/jumbo v1, "playback_bookmark"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    const-string/jumbo v1, "watched_date"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    const-string/jumbo v1, "seasonNumber"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    const-string/jumbo v1, "episodeNumber"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    const-string/jumbo v1, "endtime"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    const-string/jumbo v1, "logicalStart"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    const-string/jumbo v1, "isAutoPlayEnabled"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    const-string/jumbo v1, "isExemptFromInterrupterLimit"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    const-string/jumbo v1, "autoPlayMaxCount"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    const-string/jumbo v1, "reqid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    const-string/jumbo v1, "listpos"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    const-string/jumbo v1, "videopos"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    const-string/jumbo v1, "postPlayCount"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    const-string/jumbo v1, "isAgeProtected"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    const-string/jumbo v1, "isPinProtected"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    const-string/jumbo v1, "isPinVerified"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    const-string/jumbo v1, "expirationTime"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    const-string/jumbo v1, "playLocation"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    const-string/jumbo v1, "isBrowsePlay"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    const-string/jumbo v1, "seasonNumAbbrLabel"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    return v0
.end method

.method public getBrowsePlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    return v0
.end method

.method public getEndtime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    return v0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    return-wide v0
.end method

.method public getHeroTrackId()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListPos()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    return v0
.end method

.method public getLogicalStart()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    return v0
.end method

.method public getNflx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    return-object v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackBookmark()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    return v0
.end method

.method public getPostPlayVideoPlayed()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    return v0
.end method

.method public getVideoPos()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    return v0
.end method

.method public getWatchedDate()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    return-wide v0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEpisode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    return v0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    return v0
.end method

.method public isHero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    return v0
.end method

.method public isPinVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    return v0
.end method

.method public playContextToBundle()Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playContextToBundle(Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setAdvisoryDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    return-void
.end method

.method public setBrowsePlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    return-void
.end method

.method public setPinVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    return-void
.end method

.method public setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    return-void
.end method

.method public setPlaybackBookmark(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    return-void
.end method

.method public toIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Intent can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "playableid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "parentid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "isNSRE"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isEpisode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isSupplementalVideo"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "trkid"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "parent_title"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "watched_date"

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "playback_bookmark"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "nflx"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "seasonNumber"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "episodeNumber"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "duration"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "endtime"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "logicalStart"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isAutoPlayEnabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isExemptFromInterrupterLimit"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "autoPlayMaxCount"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isNextPlayableEpisode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "reqid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "listpos"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "videopos"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "postPlayCount"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isAgeProtected"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isPinProtected"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isPinVerified"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "expirationTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "playLocation"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "isAdvisoryDisabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "isBrowsePlay"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "seasonNumAbbrLabel"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "offlineAvailable"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Asset [mPlayableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mParentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsNSRE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsSupplementalVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAutoPlayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsExemptFromInterrupterLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAutoPlayMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsNextPlayableEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mListPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVideoPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mParentTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWatchedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaybackBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNflx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLogicalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAgeProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsPinProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsPinVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSeasonNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEpisodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPostPlayVideoPlayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mExpirationEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayRequestedLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAdvisoryDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsBrowsePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSeasonAbbrSeqLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeLong(Landroid/os/Parcel;J)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeLong(Landroid/os/Parcel;J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    return-void
.end method
