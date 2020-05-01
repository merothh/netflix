.class public final Lcom/netflix/mediaclient/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "nfxpref"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static containsPref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    :goto_0
    return v0

    .line 323
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to get preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return p2

    .line 46
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getCrashReport(Landroid/content/Context;)Lcom/netflix/mediaclient/javabridge/error/CrashReport;
    .locals 15

    .prologue
    .line 388
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    const-string/jumbo v1, "NF_CrashReport.signal"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 390
    const-string/jumbo v1, "NF_CrashReport.sigNumber"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 391
    const-string/jumbo v1, "NF_CrashReport.errorNumber"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 392
    const-string/jumbo v1, "NF_CrashReport.errorCode"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 393
    const-string/jumbo v1, "NF_CrashReport.ts"

    const-wide/16 v8, -0x1

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 394
    const-string/jumbo v1, "NF_CrashReport.movieId"

    const-string/jumbo v8, ""

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 395
    const-string/jumbo v1, "NF_CrashReport.episodeId"

    const-string/jumbo v9, ""

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 396
    const-string/jumbo v1, "NF_CrashReport.trackId"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 397
    const-string/jumbo v1, "NF_CrashReport.pid"

    const/4 v13, -0x1

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 398
    const/4 v1, -0x1

    if-ne v14, v1, :cond_0

    .line 399
    invoke-static {v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removeCrashReport(Landroid/content/SharedPreferences;)V

    .line 400
    const/4 v0, 0x0

    .line 410
    :goto_0
    return-object v0

    .line 403
    :cond_0
    invoke-static {v14}, Lcom/netflix/mediaclient/javabridge/error/Signal;->toSignal(I)Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v1

    .line 404
    if-nez v1, :cond_1

    .line 405
    invoke-static {v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removeCrashReport(Landroid/content/SharedPreferences;)V

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/javabridge/error/CrashReport;

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;-><init>(Lcom/netflix/mediaclient/javabridge/error/Signal;JJJLjava/lang/String;Ljava/lang/String;IJI)V

    goto :goto_0
.end method

.method public static getFloatPref(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 261
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return p2

    .line 266
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return p2

    .line 96
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getLongPref(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-wide p2

    .line 223
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-object p2

    .line 173
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Failed to get preferences!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return v0

    .line 69
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return v0

    .line 119
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 121
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 240
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string/jumbo v0, "nfxpref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 191
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :goto_0
    return v0

    .line 196
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 198
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    .line 141
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return v0

    .line 146
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 148
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static removeCrashReport(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 438
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "NF_CrashReport.signal"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string/jumbo v1, "NF_CrashReport.sigNumber"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string/jumbo v1, "NF_CrashReport.errorCode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    const-string/jumbo v1, "NF_CrashReport.errorNumber"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string/jumbo v1, "NF_CrashReport.ts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    const-string/jumbo v1, "NF_CrashReport.movieId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    const-string/jumbo v1, "NF_CrashReport.episodeId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    const-string/jumbo v1, "NF_CrashReport.trackId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string/jumbo v1, "NF_CrashReport.pid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 449
    return-void
.end method

.method private static removeCrashReport(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 421
    .line 423
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removeCrashReport(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to remove crash report from preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static removePref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 282
    .line 283
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->validate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return v0

    .line 288
    :cond_0
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    if-nez v1, :cond_1

    .line 290
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Prefs null, not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 294
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 295
    if-nez v1, :cond_2

    .line 296
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Editor null, not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_2
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveCrashReport(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/error/CrashReport;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 360
    .line 362
    :try_start_0
    const-string/jumbo v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 363
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 364
    const-string/jumbo v2, "NF_CrashReport.signal"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getSignal()Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/error/Signal;->getNumber()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string/jumbo v2, "NF_CrashReport.sigNumber"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getSigNumber()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string/jumbo v2, "NF_CrashReport.errorCode"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getErrorCode()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 367
    const-string/jumbo v2, "NF_CrashReport.errorNumber"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getErrorNumber()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string/jumbo v2, "NF_CrashReport.ts"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string/jumbo v2, "NF_CrashReport.movieId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getMovieId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string/jumbo v2, "NF_CrashReport.episodeId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string/jumbo v2, "NF_CrashReport.trackId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;->getTrkId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    const-string/jumbo v2, "nfxpref"

    const-string/jumbo v3, "Failed to save to preferences!"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static validate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    if-nez p0, :cond_0

    .line 340
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Context is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return v0

    .line 344
    :cond_0
    if-nez p1, :cond_1

    .line 345
    const-string/jumbo v1, "nfxpref"

    const-string/jumbo v2, "Name is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
