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

    .prologue
    .line 235
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    .line 123
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    .line 126
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    .line 127
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    .line 128
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    .line 129
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    .line 132
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    .line 133
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    .line 135
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    .line 136
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    .line 137
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    .line 139
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    .line 140
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    .line 141
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    .line 142
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    .line 143
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    .line 144
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    .line 145
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    .line 146
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    .line 147
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    .line 148
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    .line 149
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    .line 151
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    .line 152
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    .line 154
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    .line 155
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/servicemgr/Asset$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
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

    .line 185
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>()V

    .line 186
    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    .line 188
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    .line 189
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    .line 190
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    .line 191
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    .line 192
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkUpdateTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    .line 193
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    .line 194
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    .line 195
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getLogicalStart()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    .line 196
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    .line 197
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    .line 198
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNSRE()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    .line 199
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    .line 200
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isSupplementalVideo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    .line 201
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAutoPlayEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    .line 202
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isExemptFromInterrupterLimit()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    .line 203
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getAutoPlayMaxCount()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    .line 204
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNextPlayableEpisode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    .line 205
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAgeProtected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    .line 206
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPinProtected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    .line 207
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getExpirationTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    .line 208
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAdvisoryDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    .line 209
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    .line 210
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    .line 213
    :cond_1
    if-eqz p1, :cond_2

    .line 214
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    .line 215
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    .line 216
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    .line 217
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    .line 218
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    .line 219
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getBrowsePlay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    .line 222
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
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

    .line 225
    :cond_3
    iput-boolean p2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    .line 228
    return-object v0
.end method

.method public static createForPostPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 6

    .prologue
    .line 171
    invoke-static {p0, p1, p3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 172
    iput p2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    .line 173
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    .line 175
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

    .line 177
    :cond_0
    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 4

    .prologue
    .line 366
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;-><init>()V

    .line 367
    const-string/jumbo v1, "playableid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    .line 368
    const-string/jumbo v1, "parentid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    .line 369
    const-string/jumbo v1, "isNSRE"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    .line 370
    const-string/jumbo v1, "isEpisode"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    .line 371
    const-string/jumbo v1, "isSupplementalVideo"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    .line 372
    const-string/jumbo v1, "trkid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    .line 373
    const-string/jumbo v1, "title"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "parent_title"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    .line 375
    const-string/jumbo v1, "nflx"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    .line 376
    const-string/jumbo v1, "playback_bookmark"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    .line 377
    const-string/jumbo v1, "watched_date"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    .line 378
    const-string/jumbo v1, "seasonNumber"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    .line 379
    const-string/jumbo v1, "episodeNumber"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    .line 380
    const-string/jumbo v1, "duration"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    .line 381
    const-string/jumbo v1, "endtime"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    .line 382
    const-string/jumbo v1, "logicalStart"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    .line 383
    const-string/jumbo v1, "isAutoPlayEnabled"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    .line 384
    const-string/jumbo v1, "isExemptFromInterrupterLimit"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    .line 385
    const-string/jumbo v1, "autoPlayMaxCount"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    .line 386
    const-string/jumbo v1, "isNextPlayableEpisode"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    .line 387
    const-string/jumbo v1, "reqid"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    .line 388
    const-string/jumbo v1, "listpos"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    .line 389
    const-string/jumbo v1, "videopos"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    .line 390
    const-string/jumbo v1, "postPlayCount"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    .line 391
    const-string/jumbo v1, "isAgeProtected"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    .line 392
    const-string/jumbo v1, "isPinProtected"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    .line 393
    const-string/jumbo v1, "isPinVerified"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    .line 394
    const-string/jumbo v1, "expirationTime"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    .line 395
    const-string/jumbo v1, "playLocation"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    .line 396
    const-string/jumbo v1, "isAdvisoryDisabled"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    .line 397
    const-string/jumbo v1, "isBrowsePlay"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    .line 398
    const-string/jumbo v1, "seasonNumAbbrLabel"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    .line 399
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    return v0
.end method

.method public getBrowsePlay()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    return v0
.end method

.method public getEndtime()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    return v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    return-wide v0
.end method

.method public getHeroTrackId()I
    .locals 2

    .prologue
    .line 649
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    return v0
.end method

.method public getLogicalStart()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    return v0
.end method

.method public getNflx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    return-object v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackBookmark()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    return v0
.end method

.method public getPostPlayVideoPlayed()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    return v0
.end method

.method public getVideoPos()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    return v0
.end method

.method public getWatchedDate()J
    .locals 2

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    return-wide v0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEpisode()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    return v0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    return v0
.end method

.method public isPinVerified()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    return v0
.end method

.method public playContextToBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 628
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playContextToBundle(Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setAdvisoryDisabled(Z)V
    .locals 0

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    .line 667
    return-void
.end method

.method public setBrowsePlay(Z)V
    .locals 0

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    .line 619
    return-void
.end method

.method public setPinVerified(Z)V
    .locals 0

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    .line 659
    return-void
.end method

.method public setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setPlaybackBookmark(I)V
    .locals 0

    .prologue
    .line 530
    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    .line 531
    return-void
.end method

.method public toIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Intent can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    const-string/jumbo v0, "playableid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v0, "parentid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v0, "isNSRE"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string/jumbo v0, "isEpisode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    const-string/jumbo v0, "isSupplementalVideo"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string/jumbo v0, "trkid"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v0, "parent_title"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v0, "watched_date"

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 331
    const-string/jumbo v0, "playback_bookmark"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string/jumbo v0, "nflx"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v0, "seasonNumber"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string/jumbo v0, "episodeNumber"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string/jumbo v0, "duration"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string/jumbo v0, "endtime"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string/jumbo v0, "logicalStart"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string/jumbo v0, "isAutoPlayEnabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string/jumbo v0, "isExemptFromInterrupterLimit"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string/jumbo v0, "autoPlayMaxCount"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v0, "isNextPlayableEpisode"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string/jumbo v0, "reqid"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v0, "listpos"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string/jumbo v0, "videopos"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string/jumbo v0, "postPlayCount"

    iget v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string/jumbo v0, "isAgeProtected"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string/jumbo v0, "isPinProtected"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string/jumbo v0, "isPinVerified"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string/jumbo v0, "expirationTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    const-string/jumbo v0, "playLocation"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v0, "isAdvisoryDisabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    const-string/jumbo v0, "isBrowsePlay"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string/jumbo v0, "seasonNumAbbrLabel"

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v0, "offlineAvailable"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 633
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

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayableId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTrackId:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 276
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNSRE:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 277
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsEpisode:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 278
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsSupplementalVideo:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mParentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 281
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mWatchedDate:J

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeLong(Landroid/os/Parcel;J)V

    .line 282
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlaybackBookmark:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mNflx:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonNumber:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 285
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEpisodeNumber:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 286
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mDuration:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mReqId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mListPos:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 289
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mVideoPos:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 290
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mEndtime:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 291
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mLogicalStart:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 292
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAutoPlayEnabled:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 293
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsNextPlayableEpisode:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 294
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPostPlayVideoPlayed:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 295
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAgeProtected:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 296
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinProtected:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 297
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsPinVerified:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 298
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mExpirationTime:J

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeLong(Landroid/os/Parcel;J)V

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mPlayLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAdvisoryDisabled:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 301
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsBrowsePlay:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mSeasonAbbrSeqLabel:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mAutoPlayMaxCount:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    .line 304
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsExemptFromInterrupterLimit:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 305
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/Asset;->mIsAvailableOffline:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 306
    return-void
.end method
