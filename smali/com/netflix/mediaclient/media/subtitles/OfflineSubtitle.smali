.class public abstract Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/media/subtitles/Subtitle;


# static fields
.field protected static final ATTR_LOCAL_PATH:Ljava/lang/String; = "localPath"

.field protected static final ATTR_PROFILE:Ljava/lang/String; = "profile"

.field protected static final ATTR_SUBTITLE_URL:Ljava/lang/String; = "subtitleUrl"

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_offline"


# instance fields
.field protected mLocalFilePath:Ljava/lang/String;

.field protected mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 47
    iput-object p2, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 48
    iput-object p3, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const-string v0, "localPath"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    const-string v1, "subtitleUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    return-void
.end method

.method public static newInstance(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;
    .locals 5

    if-nez p2, :cond_0

    const-string p2, ""

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "nf_subtitles_offline"

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "OfflineSubtitle::newInstance: text, path %s"

    .line 157
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/OfflineTextSubtitle;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/media/subtitles/OfflineTextSubtitle;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "OfflineSubtitle::newInstance: image, path %s"

    .line 154
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public canDeviceRender()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->canDeviceRender()Z

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 181
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->compareTo(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)I

    move-result p1

    return p1
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImplementation()I
.end method

.method public getLanguageCodeBcp47()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result v0

    return v0
.end method

.method public getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getTrackType()I

    move-result v0

    return v0
.end method

.method public isCC()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isCC()Z

    move-result v0

    return v0
.end method

.method public isForcedNarrativeOrNone()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->getImplementation()I

    move-result v1

    const-string v2, "impl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    const-string v2, "localPath"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subtitleUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SubtitleUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LocalFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString2()Ljava/lang/String;
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/subtitles/OfflineSubtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
