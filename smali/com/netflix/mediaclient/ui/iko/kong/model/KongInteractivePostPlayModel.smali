.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;
.super Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;
.source "KongInteractivePostPlayModel.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "KONG_POST_PLAY"


# instance fields
.field audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

.field autoPlayInterval:I

.field avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

.field battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

.field collectionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field gatePostPlayOnAssetLoadFailure:Z

.field hideAnimation:Z

.field images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

.field initialState:Ljava/lang/String;

.field interactiveOriginalsPrimerVersion:Ljava/lang/String;

.field nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

.field opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

.field resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

.field strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

.field trackId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAutoPlayInterval()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->autoPlayInterval:I

    return v0
.end method

.method public getAutoPlayString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->autoPlayString:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->autoPlayString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "${remainingTime}"

    const-string/jumbo v2, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getAvatarImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAvatarSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBackBTNImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBackBTNTappedImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackLabelString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->backLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->backVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackVOSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->backVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleBackgroundImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackgroundSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackgroundSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackgroundSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBadgeTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBadgeTappedImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBadgeTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleAgainString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleAgain:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBattleBackgroundImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBattleButtonSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleButton:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleButtonSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleButtonSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleButton:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleButtonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->battleButton:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleOptInHeaderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeVideoId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleOptInHeader:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->battleOptInHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleOptInVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleOptInVOSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleOptInVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleTitleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleTitleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCardDropshadowImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCardDropshadowImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCardDropshadowImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCardTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCardTappedImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCardTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCloseBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCloseBTNImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCloseBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCloseBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCloseBTNTappedImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCloseBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCollectionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    return-object v0
.end method

.method public getCreditString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->credit:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDotBlurParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getDotBlurParallaxImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getDotBlurParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExitString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->exit:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHexParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getHexParallaxImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getHexParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitialState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->initialState:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractiveOriginalsPrimerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interactiveOriginalsPrimerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInterrupterCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interrupterCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interrupterCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getItemSelectionHeaderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->itemSelectionHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getItemSelectionSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemUnlockSfxSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getItemUnlockSfxSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemUnlockSfxSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLeftGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getLeftGateImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getLeftGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoadingHeaderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->loadingHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getNextEpisodeImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getNextEpisodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->nextEpisode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeTitleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeTrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->trackId:I

    goto :goto_0
.end method

.method public getNextEpisodeVideoId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->videoId:I

    goto :goto_0
.end method

.method public getOpponentImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getOpponentImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getOpponentImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOpponentNameString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlusParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getPlusParallaxImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getPlusParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostPlayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getPreCacheableResourcesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->isResultBattleCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    if-eqz v0, :cond_21

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->badge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->badge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->battleBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->battleBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->itemOnAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->itemOnAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->getVo()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->getVo()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->battleAgainVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v3, :cond_21

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->battleAgainVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_26
    return-object v1
.end method

.method public getRedFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getRedFlareImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRedFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourceUrlToLocalCachedFileMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getResultAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getResultAvatarImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultAvatarSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultBattleCardImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->isResultBattleCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultBattleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultData()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    return-object v0
.end method

.method public getResultDataSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultDataWatchNextBattleOptInHeaderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleOptInHeader:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultTitleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->resultHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRightGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getRightGateImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRightGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSmAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getSmAvatarImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getSmAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSunburstImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getSunburstImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getSunburstImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->trackId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlockEmptyBadgeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getUnlockEmptyBadgeImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockEmptyBadgeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnlockVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getUnlockVOSoundUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnlockedHeaderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->unlockedHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusHexImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusHexImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusHexImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusLockImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusLockImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusLockImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusSwordsImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusSwordsImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusSwordsImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWhiteFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getWhiteFlareImageUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getWhiteFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasGatePostPlayOnAssetLoadFailure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->gatePostPlayOnAssetLoadFailure:Z

    return v0
.end method

.method public hasWatchedAllBattleVideosForEpisode()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->hasWatchedAllBattleVideosForEpisode:Z

    goto :goto_0
.end method

.method public isNextEpisodeFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->focused:Z

    goto :goto_0
.end method

.method public isResultBattleCardAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->hideAnimation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongInteractivePostPlayModel{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", initialState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->initialState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", interactiveOriginalsPrimerVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interactiveOriginalsPrimerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoPlayInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->autoPlayInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", strings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", battle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", opponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nextEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", collectionItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
