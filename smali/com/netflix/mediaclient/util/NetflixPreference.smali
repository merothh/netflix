.class public Lcom/netflix/mediaclient/util/NetflixPreference;
.super Ljava/lang/Object;
.source "NetflixPreference.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "nfxpref"

.field private static final TAG:Ljava/lang/String; = "nfxpref"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/NetflixPreference;->load()Z

    .line 34
    return-void
.end method

.method private load()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nfxpref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private validate(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 324
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v0, "nfxpref"

    const-string/jumbo v1, "Name is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public commit()Z
    .locals 4

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public containsPref(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v0

    .line 309
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBooleanPref(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return p2

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFloatPref(Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return p2

    .line 267
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIntPref(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return p2

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLongPref(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-wide p2

    .line 229
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-object p2

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putBooleanPref(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putIntPref(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return v0

    .line 138
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putLongPref(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLongPref(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return v0

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putStringPref(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return v0

    .line 161
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePref(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/NetflixPreference;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return v0

    .line 288
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/util/NetflixPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
