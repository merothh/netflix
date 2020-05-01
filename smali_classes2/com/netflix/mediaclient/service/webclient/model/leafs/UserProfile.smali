.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;
    }
.end annotation


# static fields
.field private static final FIELD_AUTHORIZATION_TOKENS:Ljava/lang/String; = "tokens"

.field private static final FIELD_AUTOPLAY_ON:Ljava/lang/String; = "autoPlayOn"

.field private static final FIELD_AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field private static final FIELD_DISABLE_VIDEO_MERCH_AUTOPLAY:Ljava/lang/String; = "disableVideoMerchAutoPlay"

.field private static final FIELD_EPERIENCE:Ljava/lang/String; = "experienceType"

.field private static final FIELD_GEO_COUNTRY:Ljava/lang/String; = "geoCountry"

.field private static final FIELD_HAS_TITLE_RESTRICTIONS:Ljava/lang/String; = "hasTitleRestrictions"

.field private static final FIELD_IQ_ENABLED:Ljava/lang/String; = "isIqEnabled"

.field private static final FIELD_IS_DEFAULT_KIDS_PROFILE:Ljava/lang/String; = "isDefaultKidsProfile"

.field private static final FIELD_IS_PRIMARY:Ljava/lang/String; = "isPrimaryProfile"

.field private static final FIELD_IS_PROFILE_CREATION_LOCKED:Ljava/lang/String; = "isProfileCreationLocked"

.field private static final FIELD_IS_PROFILE_LOCKED:Ljava/lang/String; = "isProfileLocked"

.field private static final FIELD_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final FIELD_MATURITY_HIGHEST:Ljava/lang/String; = "isHighest"

.field private static final FIELD_MATURITY_LABEL:Ljava/lang/String; = "label"

.field private static final FIELD_MATURITY_LEVEL:Ljava/lang/String; = "level"

.field private static final FIELD_MATURITY_LOWEST:Ljava/lang/String; = "isLowest"

.field private static final FIELD_MATURITY_OBJECT:Ljava/lang/String; = "maturity"

.field private static final FIELD_PROFILE_GUID:Ljava/lang/String; = "profileId"

.field private static final FIELD_PROFILE_LOCK_PIN:Ljava/lang/String; = "profileLockPin"

.field private static final FIELD_PROFILE_NAME:Ljava/lang/String; = "profileName"

.field private static final FIELD_REQ_COUNTRY:Ljava/lang/String; = "reqCountry"

.field private static final TAG:Ljava/lang/String; = "UserProfile"


# instance fields
.field public operation:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

.field public subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

.field public summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    .line 312
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->operation:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;

    .line 315
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "profileId"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "profileName"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "isIqEnabled"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 321
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "isPrimaryProfile"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 322
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "isDefaultKidsProfile"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 323
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "autoPlayOn"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 324
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "disableVideoMerchAutoPlay"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 325
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "experienceType"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "avatarUrl"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "geoCountry"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "reqCountry"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "isProfileLocked"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "profileLockPin"

    invoke-static {v0, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1702(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "isProfileCreationLocked"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    .line 332
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v2, "hasTitleRestrictions"

    invoke-static {v0, v2, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z

    const-string v1, "maturity"

    .line 334
    invoke-static {v0, v1, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v2

    const-string v5, "level"

    const/4 v6, -0x1

    invoke-static {v1, v5, v6}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;I)I

    const-string v2, "label"

    .line 337
    invoke-static {v1, v2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    .line 339
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 340
    iget-object v6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v2

    const-string v5, "isLowest"

    invoke-static {v1, v5, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;Z)Z

    .line 344
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v2

    const-string v5, "isHighest"

    invoke-static {v1, v5, v4}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;Z)Z

    :cond_2
    const-string v1, "languages"

    .line 347
    invoke-static {v0, v1, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ","

    .line 349
    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 350
    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 351
    iget-object v6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    new-instance v7, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    invoke-direct {v7, p0, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "subtitleOverride"

    .line 356
    invoke-static {v0, v1, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;-><init>(Ljava/lang/String;)V

    :goto_3
    iput-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create json string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserProfile"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method


# virtual methods
.method public disableVideoMerchAutoPlay()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEperienceType()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGeoCountry()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    .line 205
    iget-object v3, v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->code:Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLanguagesInCsv()Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;

    .line 191
    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->code:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMaturityLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getProfileGuid()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProfileLockPin()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    return-object v0

    .line 174
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    return-object v0
.end method

.method public getReqCountry()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v0
.end method

.method public hasTitleRestrictions()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultKidsProfile()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIQEnabled()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKidsProfile()Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->JFK:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaturityHighest()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaturityLowest()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->access$800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimaryProfile()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProfileCreationLocked()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProfileLocked()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->access$1500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "UserProfile"

    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "profileId"

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "profileName"

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isIqEnabled"

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isPrimaryProfile"

    .line 268
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isDefaultKidsProfile"

    .line 269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isDefaultKidsProfile()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "autoPlayOn"

    .line 270
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isAutoPlayEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "experienceType"

    .line 271
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getEperienceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "avatarUrl"

    .line 272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "languages"

    .line 273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "geoCountry"

    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getGeoCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reqCountry"

    .line 275
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getReqCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isProfileLocked"

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isProfileLocked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "profileLockPin"

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileLockPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isProfileCreationLocked"

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isProfileCreationLocked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "disableVideoMerchAutoPlay"

    .line 279
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->disableVideoMerchAutoPlay()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasTitleRestrictions"

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->hasTitleRestrictions()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getMaturityLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getMaturityLabels()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getMaturityLabels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v4, "label"

    .line 290
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "isLowest"

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isMaturityLowest()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isHighest"

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isMaturityHighest()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "maturity"

    .line 294
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    if-eqz v2, :cond_2

    const-string v2, "subtitleOverride"

    .line 298
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed in json string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
