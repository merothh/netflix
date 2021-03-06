.class public Lcom/netflix/mediaclient/service/player/drm/LicenseContext;
.super Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;
.source "LicenseContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mSessionParams:Lorg/json/JSONObject;

.field private mStartPosition:I

.field private mTrackId:Ljava/lang/String;

.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;[BLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p4, p5, p7}, Lcom/netflix/mediaclient/service/player/drm/BaseLicenseContext;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;[BLorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mTrackId:Ljava/lang/String;

    const-string/jumbo v0, "samurai"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mXid:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStartPosition:I

    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mSessionParams:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionParams()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mSessionParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStartPosition:I

    return v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mXid:Ljava/lang/String;

    return-object v0
.end method
