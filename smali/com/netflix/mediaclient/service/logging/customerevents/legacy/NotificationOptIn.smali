.class public Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;
.super Ljava/lang/Object;
.source "NotificationOptIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceToken:Ljava/lang/String;

.field private mGcmInfoOptIn:Z

.field private mOptIn:Z

.field private mUser:Lcom/netflix/mediaclient/service/logging/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mOptIn:Z

    .line 45
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mGcmInfoOptIn:Z

    .line 46
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mDeviceToken:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    .line 48
    return-void
.end method


# virtual methods
.method protected getCommonRequestParameters(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/UserData;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v0

    .line 76
    iget-object v1, p2, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->profileToken:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->osVersion:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->deviceCategory:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    .line 80
    iget-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->uiVersion:Ljava/lang/String;

    .line 81
    iget-object v1, p2, Lcom/netflix/mediaclient/service/logging/UserData;->accountCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->country:Ljava/lang/String;

    .line 82
    iget-object v1, p2, Lcom/netflix/mediaclient/service/logging/UserData;->geoLocationCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->geolocationCountry:Ljava/lang/String;

    .line 83
    iget-object v1, p2, Lcom/netflix/mediaclient/service/logging/UserData;->languages:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->languages:Ljava/lang/String;

    .line 85
    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 58
    :try_start_0
    new-instance v7, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->getCommonRequestParameters(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/UserData;)Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v2

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mDeviceToken:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mOptIn:Z

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mGcmInfoOptIn:Z

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v8, v8, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileGuid:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;Ljava/lang/String;ZZZLcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/PushNotificationOptInStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v2, "Executing NotificationOptInCommand WebAPI call start"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->execute()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Executing NotificationOptInCommand WebAPI call done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotificationOptInCommand response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Failed to execute both WebAPI call!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationOptIn [mDeviceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mDeviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOptIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mOptIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGcmInfoOptIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mGcmInfoOptIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mUser:Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/NotificationOptIn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
