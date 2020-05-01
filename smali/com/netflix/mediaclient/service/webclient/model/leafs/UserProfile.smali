.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;


# static fields
.field private static final FIELD_AUTOPLAY_ON:Ljava/lang/String; = "autoPlayOn"

.field private static final FIELD_AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field private static final FIELD_EMAIL:Ljava/lang/String; = "email"

.field private static final FIELD_EPERIENCE:Ljava/lang/String; = "experienceType"

.field private static final FIELD_FIRST_NAME:Ljava/lang/String; = "firstName"

.field private static final FIELD_IQ_ENABLED:Ljava/lang/String; = "isIqEnabled"

.field private static final FIELD_IS_PRIMARY:Ljava/lang/String; = "isPrimaryProfile"

.field private static final FIELD_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final FIELD_LAST_NAME:Ljava/lang/String; = "lastName"

.field private static final FIELD_MATURITY_LEVEL:Ljava/lang/String; = "maturityLevel"

.field private static final FIELD_PROFILE_GUID:Ljava/lang/String; = "profileId"

.field private static final FIELD_PROFILE_NAME:Ljava/lang/String; = "profileName"

.field private static final FIELD_PROFILE_TOKEN:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "UserProfile"


# instance fields
.field public operation:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

.field public subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

.field public summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 244
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    .line 245
    new-instance v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->operation:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

    .line 248
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "profileId"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "profileName"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "firstName"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "lastName"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "email"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "maturityLevel"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$702(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;I)I

    .line 258
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "isIqEnabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 259
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "isPrimaryProfile"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 260
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "autoPlayOn"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 261
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "experienceType"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string/jumbo v4, "avatarUrl"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    const-string/jumbo v3, "languages"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    const-string/jumbo v4, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 268
    iget-object v6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    new-instance v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    invoke-direct {v7, p0, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string/jumbo v1, "UserProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to create json string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_2
    return-void

    .line 273
    :cond_1
    :try_start_1
    const-string/jumbo v1, "subtitleOverride"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_3
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEperienceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGeoCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    .line 183
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->code:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 184
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 185
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 186
    goto :goto_0
.end method

.method public getLanguagesInCsv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguagesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    .line 169
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->code:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)I

    move-result v0

    goto :goto_0
.end method

.method public getProfileGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProfileToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    .line 152
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    goto :goto_0
.end method

.method public getReqCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIQEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKidsProfile()Z
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->JFK:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryProfile()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v0, "profileId"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v0, "profileName"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v0, "firstName"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v0, "lastName"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v0, "email"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v0, "maturityLevel"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getMaturityLevel()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v0, "isIqEnabled"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v0, "isPrimaryProfile"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v0, "autoPlayOn"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isAutoPlayEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v0, "experienceType"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getEperienceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v0, "avatarUrl"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v0, "languages"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, "subtitleOverride"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    const-string/jumbo v0, "UserProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v2, "UserProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed in json string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
