.class public final Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerCapabilities.java"


# static fields
.field private static final PROPERTY_autoAdvanceMax:Ljava/lang/String; = "autoAdvanceMax"

.field private static final PROPERTY_is3dSupported:Ljava/lang/String; = "is3dSupported"

.field private static final PROPERTY_is5dot1Supported:Ljava/lang/String; = "is5dot1Supported"

.field private static final PROPERTY_isHdSupported:Ljava/lang/String; = "isHdSupported"

.field private static final PROPERTY_volumeControl:Ljava/lang/String; = "volumeControl"

.field private static final PROPERTY_volumeStep:Ljava/lang/String; = "volumeStep"


# instance fields
.field private mAutoAdvanceMax:I

.field private mIs3dSupported:Z

.field private mIs5dot1Supported:Z

.field private mIsHdSupported:Z

.field private mVolumeControl:Z

.field private mVolumeStep:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    const-string/jumbo v0, "PLAYER_CAPABILITIES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mJson:Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v0, "is3dSupported"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs3dSupported:Z

    .line 48
    const-string/jumbo v0, "isHdSupported"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIsHdSupported:Z

    .line 50
    const-string/jumbo v0, "is5dot1Supported"

    invoke-static {p1, v0, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs5dot1Supported:Z

    .line 52
    const-string/jumbo v0, "autoAdvanceMax"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mAutoAdvanceMax:I

    .line 53
    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mVolumeControl:Z

    .line 56
    :cond_0
    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mVolumeStep:I

    .line 59
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 47
    goto :goto_0

    :cond_3
    move v0, v2

    .line 49
    goto :goto_1

    :cond_4
    move v1, v2

    .line 51
    goto :goto_2
.end method


# virtual methods
.method public getAutoAdvanceMax()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mAutoAdvanceMax:I

    return v0
.end method

.method public getVolumeStep()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mVolumeStep:I

    return v0
.end method

.method public is3dSupported()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs3dSupported:Z

    return v0
.end method

.method public is5dot1Supported()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs5dot1Supported:Z

    return v0
.end method

.method public isHdSupported()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIsHdSupported:Z

    return v0
.end method

.method public isVolumeControl()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mVolumeControl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayerCapabilities [isHdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIsHdSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is5dot1Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs5dot1Supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is3dSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mIs3dSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoAdvanceMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerCapabilities;->mAutoAdvanceMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
