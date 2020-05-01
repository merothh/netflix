.class public interface abstract Lcom/netflix/model/leafs/PostPlayItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final POST_PLAY_ITEM_EPISODE:Ljava/lang/String; = "episode"


# virtual methods
.method public abstract getActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAncestorSynopsis()Ljava/lang/String;
.end method

.method public abstract getAncestorTitle()Ljava/lang/String;
.end method

.method public abstract getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getAutoPlaySeconds()I
.end method

.method public abstract getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
.end method

.method public abstract getBadgeKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;
.end method

.method public abstract getEpisodes()I
.end method

.method public abstract getExperienceType()Ljava/lang/String;
.end method

.method public abstract getFirstActionWithTrackId()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getImpressionData()Ljava/lang/String;
.end method

.method public abstract getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
.end method

.method public abstract getMatchPercentage()I
.end method

.method public abstract getMaturityRating()Ljava/lang/String;
.end method

.method public abstract getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getPlayActionAtIndex(I)Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getRuntime()I
.end method

.method public abstract getSeamlessStart()I
.end method

.method public abstract getSeasonRenewalPlayTrailerAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getSeasonRenewalPostPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
.end method

.method public abstract getSeasonsLabel()Ljava/lang/String;
.end method

.method public abstract getSupplementalMessage()Ljava/lang/String;
.end method

.method public abstract getSynopsis()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUiLabel()Ljava/lang/String;
.end method

.method public abstract getVideoId()Ljava/lang/Integer;
.end method

.method public abstract getYear()Ljava/lang/Integer;
.end method

.method public abstract hasNewBadge()Z
.end method

.method public abstract isAutoPlay()Z
.end method

.method public abstract isEpisodeNumberHidden()Z
.end method

.method public abstract isNewForPvr()Z
.end method

.method public abstract isNextEpisodeAutoPlay()Z
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setAutoPlaySeconds(I)V
.end method

.method public abstract setExperienceType(Ljava/lang/String;)V
.end method

.method public abstract setNextEpisodeAutoPlay(Z)V
.end method

.method public abstract setNextEpisodeSeamless(Z)V
.end method

.method public abstract setSeamlessStart(I)V
.end method
