.class Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;
.super Ljava/lang/Object;
.source "AccountKeyMap.java"


# static fields
.field private static final CKE_KID_MAPKEY:Ljava/lang/String; = "kceKeyId"

.field private static final CKH_KID_MAPKEY:Ljava/lang/String; = "kchKeyId"

.field private static final CURRENT_ACCOUNT:Ljava/lang/String; = "currentAccount"

.field private static final KSID_MAPKEY:Ljava/lang/String; = "keySetId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountKeyMap:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field private mKeyIdsFromLegacy:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_acckeymap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->buildKeyIdsMapFromLegacy()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildKeyIdsMapFromLegacy()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "nf_drm_cdm_keyset_id"

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/util/NetflixPreference;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nf_drm_kce_key_id"

    invoke-virtual {v0, v2, v4}, Lcom/netflix/mediaclient/util/NetflixPreference;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nf_drm_kch_key_id"

    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/util/NetflixPreference;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has legacy ksid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], kce_id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], kch_id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mKeyIdsFromLegacy:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    const-string/jumbo v1, "nf_drm_cdm_keyset_id"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "nf_drm_kce_key_id"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "nf_drm_kch_key_id"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    :cond_1
    return-void
.end method

.method private saveToPreference()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveToPreference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_drm_acckeymap"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method addCurrentKeyIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->saveToPreference()V

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addCurrentKeyIds no current account"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t addCurrentKeyIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method clearMap()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->saveToPreference()V

    return-void
.end method

.method getCurrentAccount()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentKeyIds()Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;Ljava/lang/String;)V

    return-object v1
.end method

.method removeCurrentKeyIds(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->saveToPreference()V

    return-void
.end method

.method restoreKeyIdsForAccount(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->restoreKeyIdsWithoutAccount()Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->saveToPreference()V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->getCurrentKeyIds()Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mKeyIdsFromLegacy:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mKeyIdsFromLegacy:Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t buildKeyIdsToKeySetIdMapFromLegacy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "account not found when restoreKeyIdsForAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->mAccountKeyMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAccount"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method restoreKeyIdsWithoutAccount()Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap$KeyIds;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/AccountKeyMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreKeyIdsWithoutAccount not supported"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
