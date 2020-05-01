.class final Lcom/netflix/mediaclient/ui/signup/Bootloader;
.super Ljava/lang/Object;
.source "Bootloader.java"


# static fields
.field private static final PARAMETER_CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static final PARAMETER_DEVICE_CATEGORY:Ljava/lang/String; = "device_cat"

.field private static final PARAMETER_DEVICE_LANGUAGE:Ljava/lang/String; = "locale"

.field private static final PARAMETER_FULL_ESN:Ljava/lang/String; = "esn"

.field private static final PARAMETER_IS_INAPP_FLOW:Ljava/lang/String; = "inapp"

.field private static final PARAMETER_IS_PRELOADED:Ljava/lang/String; = "isNetflixPreloaded"

.field private static final PARAMETER_NRD_DEVICE_MODEL:Ljava/lang/String; = "nrdDeviceModel"

.field private static final PARAMETER_OS:Ljava/lang/String; = "os"

.field private static final PARAMETER_PLAYBILLING:Ljava/lang/String; = "isPlayBillingEnabled"

.field private static final PARAMETER_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final PARAMETER_SHARED_SESSION_UUID:Ljava/lang/String; = "uuid"

.field private static final PARAMETER_SOFTWARE_VERSION:Ljava/lang/String; = "sw_version"

.field private static final PARAMETER_VIDEO_ID:Ljava/lang/String; = "titleVideoId"

.field private static final TAG:Ljava/lang/String; = "SignupActivity"

.field private static final TEMP_CHANNLE_ID:Ljava/lang/String; = "780bd1ac-0bef-4578-bf41-5cd4d3acd5a1"


# instance fields
.field private mIsPlayBillingEnabled:Z

.field private mIsPreloaded:Z

.field private mLang:Ljava/lang/String;

.field private mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private mUrl:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Service Manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 63
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mLang:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mIsPreloaded:Z

    .line 65
    iput-boolean p5, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mIsPlayBillingEnabled:Z

    .line 66
    iput-object p6, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUuid:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setUrl(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string/jumbo p1, ""

    .line 149
    :goto_0
    return-object p1

    .line 145
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x3d

    const/16 v5, 0x26

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string/jumbo v2, "SignupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "URL queryParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :goto_0
    const-string/jumbo v0, "esn"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 94
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v0, "sdk_version"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    .line 96
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v0, "sw_version"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 98
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v0, "os"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v0, "device_cat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mSvcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 103
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v0, "locale"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mLang:Ljava/lang/String;

    .line 115
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v0, "inapp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "=true&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v0, "isNetflixPreloaded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mIsPreloaded:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "true"

    .line 119
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v0, "isPlayBillingEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mIsPlayBillingEnabled:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "true"

    .line 121
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v0, "channelId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "780bd1ac-0bef-4578-bf41-5cd4d3acd5a1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mVideoId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "titleVideoId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mUrl:Ljava/lang/String;

    .line 133
    return-void

    .line 90
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 118
    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_1

    .line 120
    :cond_5
    const-string/jumbo v0, "false"

    goto :goto_2
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/Bootloader;->mVideoId:Ljava/lang/String;

    .line 137
    return-void
.end method
