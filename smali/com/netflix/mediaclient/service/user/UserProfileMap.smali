.class Lcom/netflix/mediaclient/service/user/UserProfileMap;
.super Ljava/lang/Object;
.source "UserProfileMap.java"


# static fields
.field private static final CURRENT_ACCOUNT_MAPKEY:Ljava/lang/String; = "currentAcc"

.field private static final PRIMARY_ACCOUNT_MAPKEY:Ljava/lang/String; = "primaryAcc"

.field private static final TAG:Ljava/lang/String; = "nf_service_useragentproilemap"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEsnMigrationFlags:Lorg/json/JSONObject;

.field private mMapChanaged:Z

.field private mProfileMap:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_profilemap"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_service_useragentproilemap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UserProfileMap json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_esnmigration_flags"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_service_useragentproilemap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEsnMigrationFlags json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    goto :goto_1
.end method


# virtual methods
.method clear()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_profilemap"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_esnmigration_flags"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method clearEsnMigrationForCurrentAccount()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_esnmigration_flags"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method getAcccountKeyFromProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentProfileIdAndKey()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "primaryAcc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method getPrimaryAccountKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "primaryAcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isCurrentAccountNeedEsnMigration()Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method markAllAccountForEsnMigration()V
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_service_useragentproilemap"

    const-string/jumbo v1, "markAllAccountForEsnMigration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "currentAcc"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "primaryAcc"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_service_useragentproilemap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAllAccountForEsnMigration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_esnmigration_flags"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mEsnMigrationFlags:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "primaryAcc"

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    const-string/jumbo v1, "currentAcc"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mMapChanaged:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mMapChanaged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "useragent_profilemap"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mProfileMap:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserProfileMap;->mMapChanaged:Z

    goto :goto_1
.end method
