.class public Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;
.super Ljava/lang/Object;
.source "NrmConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mNrmConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_config_nrm"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nrmInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nrmInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)V
    .locals 4

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persisting nrmConfigData to config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nrmInfo"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
