.class final Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmVideoDetailsRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public actorsIndex:J

.field public bifUrlIndex:J

.field public boxartImageIdIndex:J

.field public boxshotUrlIndex:J

.field public catalogIdUrlIndex:J

.field public certIndex:J

.field public copyrightIndex:J

.field public defaultTrailerIndex:J

.field public errorTypeIndex:J

.field public genresIndex:J

.field public hResLandBoxArtUrlIndex:J

.field public hResPortBoxArtUrlIndex:J

.field public hasTrailersIndex:J

.field public hasWatchedIndex:J

.field public horzDispSmallUrlIndex:J

.field public horzDispUrlIndex:J

.field public idIndex:J

.field public isInQueueIndex:J

.field public isOriginalIndex:J

.field public isPreReleaseIndex:J

.field public isVideo3DIndex:J

.field public isVideo5dot1Index:J

.field public isVideoDolbyVisionIndex:J

.field public isVideoHdIndex:J

.field public isVideoHdr10Index:J

.field public isVideoUhdIndex:J

.field public maturityLevelIndex:J

.field public playableIndex:J

.field public predictedRatingIndex:J

.field public profileIdIndex:J

.field public qualityIndex:J

.field public seasonLabelsIndex:J

.field public seasonNumberIndex:J

.field public storyDispUrlIndex:J

.field public storyUrlIndex:J

.field public supplMessageIndex:J

.field public synopsisIndex:J

.field public titleCroppedImgUrlIndex:J

.field public titleImgUrlIndex:J

.field public titleIndex:J

.field public tvCardUrlIndex:J

.field public userRatingIndex:J

.field public videoTypeIndex:J

.field public yearIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    .line 86
    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "playable"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    .line 88
    const-string/jumbo v1, "playable"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "profileId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    .line 90
    const-string/jumbo v1, "profileId"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    .line 92
    const-string/jumbo v1, "seasonNumber"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "seasonLabels"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    .line 94
    const-string/jumbo v1, "seasonLabels"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "errorType"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    .line 96
    const-string/jumbo v1, "errorType"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "videoType"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    .line 98
    const-string/jumbo v1, "videoType"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "year"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    .line 100
    const-string/jumbo v1, "year"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "maturityLevel"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    .line 102
    const-string/jumbo v1, "maturityLevel"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "synopsis"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    .line 104
    const-string/jumbo v1, "synopsis"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "quality"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    .line 106
    const-string/jumbo v1, "quality"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "actors"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    .line 108
    const-string/jumbo v1, "actors"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "genres"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    .line 110
    const-string/jumbo v1, "genres"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "cert"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    .line 112
    const-string/jumbo v1, "cert"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "supplMessage"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    .line 114
    const-string/jumbo v1, "supplMessage"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "defaultTrailer"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    .line 116
    const-string/jumbo v1, "defaultTrailer"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "copyright"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    .line 118
    const-string/jumbo v1, "copyright"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "hResPortBoxArtUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    .line 120
    const-string/jumbo v1, "hResPortBoxArtUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "hResLandBoxArtUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    .line 122
    const-string/jumbo v1, "hResLandBoxArtUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "boxshotUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    .line 124
    const-string/jumbo v1, "boxshotUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "boxartImageId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    .line 126
    const-string/jumbo v1, "boxartImageId"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "horzDispUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    .line 128
    const-string/jumbo v1, "horzDispUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "horzDispSmallUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    .line 130
    const-string/jumbo v1, "horzDispSmallUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "storyDispUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    .line 132
    const-string/jumbo v1, "storyDispUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "tvCardUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    .line 134
    const-string/jumbo v1, "tvCardUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "storyUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    .line 136
    const-string/jumbo v1, "storyUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "bifUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    .line 138
    const-string/jumbo v1, "bifUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "catalogIdUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    .line 140
    const-string/jumbo v1, "catalogIdUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "titleImgUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    .line 142
    const-string/jumbo v1, "titleImgUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "titleCroppedImgUrl"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    .line 144
    const-string/jumbo v1, "titleCroppedImgUrl"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    .line 146
    const-string/jumbo v1, "title"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isOriginal"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    .line 148
    const-string/jumbo v1, "isOriginal"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isPreRelease"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    .line 150
    const-string/jumbo v1, "isPreRelease"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "hasWatched"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    .line 152
    const-string/jumbo v1, "hasWatched"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "hasTrailers"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    .line 154
    const-string/jumbo v1, "hasTrailers"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isInQueue"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    .line 156
    const-string/jumbo v1, "isInQueue"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideoHd"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    .line 158
    const-string/jumbo v1, "isVideoHd"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideoUhd"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    .line 160
    const-string/jumbo v1, "isVideoUhd"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideo3D"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    .line 162
    const-string/jumbo v1, "isVideo3D"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideo5dot1"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    .line 164
    const-string/jumbo v1, "isVideo5dot1"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideoHdr10"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    .line 166
    const-string/jumbo v1, "isVideoHdr10"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "isVideoDolbyVision"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    .line 168
    const-string/jumbo v1, "isVideoDolbyVision"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "userRating"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    .line 170
    const-string/jumbo v1, "userRating"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v1, "RealmVideoDetails"

    const-string/jumbo v2, "predictedRating"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    .line 172
    const-string/jumbo v1, "predictedRating"

    iget-wide v2, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, v0}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 175
    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->clone()Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->clone()Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .prologue
    .line 179
    check-cast p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;

    .line 180
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->idIndex:J

    .line 181
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->playableIndex:J

    .line 182
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->profileIdIndex:J

    .line 183
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonNumberIndex:J

    .line 184
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->seasonLabelsIndex:J

    .line 185
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->errorTypeIndex:J

    .line 186
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->videoTypeIndex:J

    .line 187
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->yearIndex:J

    .line 188
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->maturityLevelIndex:J

    .line 189
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->synopsisIndex:J

    .line 190
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->qualityIndex:J

    .line 191
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->actorsIndex:J

    .line 192
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->genresIndex:J

    .line 193
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->certIndex:J

    .line 194
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->supplMessageIndex:J

    .line 195
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->defaultTrailerIndex:J

    .line 196
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->copyrightIndex:J

    .line 197
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResPortBoxArtUrlIndex:J

    .line 198
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hResLandBoxArtUrlIndex:J

    .line 199
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxshotUrlIndex:J

    .line 200
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->boxartImageIdIndex:J

    .line 201
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispUrlIndex:J

    .line 202
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->horzDispSmallUrlIndex:J

    .line 203
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyDispUrlIndex:J

    .line 204
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->tvCardUrlIndex:J

    .line 205
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->storyUrlIndex:J

    .line 206
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->bifUrlIndex:J

    .line 207
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->catalogIdUrlIndex:J

    .line 208
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleImgUrlIndex:J

    .line 209
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleCroppedImgUrlIndex:J

    .line 210
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->titleIndex:J

    .line 211
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isOriginalIndex:J

    .line 212
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isPreReleaseIndex:J

    .line 213
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasWatchedIndex:J

    .line 214
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->hasTrailersIndex:J

    .line 215
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isInQueueIndex:J

    .line 216
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdIndex:J

    .line 217
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoUhdIndex:J

    .line 218
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo3DIndex:J

    .line 219
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideo5dot1Index:J

    .line 220
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoHdr10Index:J

    .line 221
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->isVideoDolbyVisionIndex:J

    .line 222
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->userRatingIndex:J

    .line 223
    iget-wide v0, p1, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    iput-wide v0, p0, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->predictedRatingIndex:J

    .line 225
    invoke-virtual {p1}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmVideoDetailsRealmProxy$RealmVideoDetailsColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 226
    return-void
.end method
