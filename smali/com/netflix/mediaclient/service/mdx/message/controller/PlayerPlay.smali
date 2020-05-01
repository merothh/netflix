.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerPlay.java"


# static fields
.field private static final ORIGIN_USER:Ljava/lang/String; = "USER"

.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_enablePostPlay:Ljava/lang/String; = "enablePostPlay"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_esn:Ljava/lang/String; = "esn"

.field private static final PROPERTY_isDial:Ljava/lang/String; = "isDial"

.field private static final PROPERTY_isPinVerified:Ljava/lang/String; = "isPinVerified"

.field private static final PROPERTY_isThirdParty:Ljava/lang/String; = "isThirdParty"

.field private static final PROPERTY_originator:Ljava/lang/String; = "originator"

.field private static final PROPERTY_startTime:Ljava/lang/String; = "startTime"

.field private static final PROPERTY_trackId:Ljava/lang/String; = "trackId"


# instance fields
.field private final mCatalogId:Ljava/lang/String;

.field private mEpisodeId:Ljava/lang/String;

.field private final mEsn:Ljava/lang/String;

.field private mIsDial:Ljava/lang/Boolean;

.field private mIsThirdParty:Ljava/lang/Boolean;

.field private mOrigin:Ljava/lang/String;

.field private mStartTime:Ljava/lang/Integer;

.field private final mTrackId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "USER"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mCatalogId:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mTrackId:I

    .line 92
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEsn:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->createObj()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "USER"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mCatalogId:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mTrackId:I

    .line 102
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEsn:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEpisodeId:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mStartTime:Ljava/lang/Integer;

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->createObj()V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "USER"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mCatalogId:Ljava/lang/String;

    .line 123
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mTrackId:I

    .line 124
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEsn:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEpisodeId:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mStartTime:Ljava/lang/Integer;

    .line 127
    iput-object p7, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    .line 128
    iput-object p8, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsDial:Ljava/lang/Boolean;

    .line 129
    iput-object p9, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsThirdParty:Ljava/lang/Boolean;

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->createObj()V

    .line 131
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "catalogId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mCatalogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "trackId"

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mTrackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "esn"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEsn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablePostPlay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "nf_pin  sessionActive adding isPInVerified to true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "isPinVerified"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEpisodeId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "episodeId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mEpisodeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mStartTime:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mStartTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "startTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mStartTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "originator"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsDial:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "isDial"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsDial:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsThirdParty:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "isThirdParty"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->mIsThirdParty:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_5
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createObj failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
