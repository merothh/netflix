.class Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
.super Ljava/lang/Object;
.source "NotificationUserSettings.java"


# static fields
.field static final NOTIFICATION_SOUND_PREFERENCE_DISABLED:I = 0x2

.field static final NOTIFICATION_SOUND_PREFERENCE_ENABLED:I = 0x1

.field static final NOTIFICATION_SOUND_PREFERENCE_NOT_SAVED:I = 0x0

.field private static PARAM_ACCOUNT_OWNER_TOKEN:Ljava/lang/String; = null

.field private static PARAM_CURRENT_PROFILE_TOKEN:Ljava/lang/String; = null

.field private static PARAM_OLD_APP_VERSION:Ljava/lang/String; = null

.field private static PARAM_OPT_IN:Ljava/lang/String; = null

.field private static PARAM_OPT_IN_DISPLAYED:Ljava/lang/String; = null

.field private static PARAM_SOUND_ENABLED:Ljava/lang/String; = null

.field private static PARAM_TIMESTAMP:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "nf_push"


# instance fields
.field public accountOwnerToken:Ljava/lang/String;

.field public current:Z

.field public currentProfileToken:Ljava/lang/String;

.field public oldAppVersion:I

.field public optInDisplayed:Z

.field public optedIn:Z

.field public soundEnabled:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "userId"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_ACCOUNT_OWNER_TOKEN:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "oldAppVersion"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OLD_APP_VERSION:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "optIn"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "soundEnabled"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_SOUND_ENABLED:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "optInDisplayed"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN_DISPLAYED:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "ts"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_TIMESTAMP:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "currentUserId"

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_CURRENT_PROFILE_TOKEN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->soundEnabled:I

    return-void
.end method

.method static getCurrent(Ljava/util/Map;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;)",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 158
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    if-eqz v2, :cond_0

    .line 162
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static load(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    .line 175
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_ACCOUNT_OWNER_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 176
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 177
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_SOUND_ENABLED:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->soundEnabled:I

    .line 178
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OLD_APP_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 179
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    .line 181
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN_DISPLAYED:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN_DISPLAYED:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    .line 187
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_CURRENT_PROFILE_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-object v0

    .line 185
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    goto :goto_0
.end method

.method static loadSettings(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "load Notification settings start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    const-string/jumbo v0, "notification_settings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 133
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->load(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v3

    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string/jumbo v4, "nf_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User setttings found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-object v4, v3, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Failed to load settings"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 146
    :cond_2
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "load Notification settings end."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static saveSettings(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 206
    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Failed to save settings"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :goto_1
    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const-string/jumbo v1, "nf_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Saving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    const-string/jumbo v1, "notification_settings"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_ACCOUNT_OWNER_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OLD_APP_VERSION:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 102
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_SOUND_ENABLED:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->soundEnabled:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_OPT_IN_DISPLAYED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    .line 108
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_TIMESTAMP:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->PARAM_CURRENT_PROFILE_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v2, :cond_3

    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 244
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 245
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 223
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 226
    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationUserSettings [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", optedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", optInDisplayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", oldAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", soundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->soundEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
