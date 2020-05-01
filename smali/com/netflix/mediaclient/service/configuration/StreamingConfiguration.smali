.class public Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;
.super Ljava/lang/Object;
.source "StreamingConfiguration.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingqoe"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getStreamingQoe()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingqoe"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStreamingConfigInCache()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->getStreamingQoe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public persistStreamingOverride(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingqoe"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
