.class public final Lcom/netflix/mediaclient/util/AndroidManifestUtils;
.super Ljava/lang/Object;
.source "AndroidManifestUtils.java"


# static fields
.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final TAG:Ljava/lang/String; = "nf_utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2d

    const/16 v5, 0x20

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    const-string/jumbo v3, "R"

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_utils"

    const-string/jumbo v4, "This should not happen, player type was null at this point! Use default."

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/media/PlayerType;->mapPlayerTypeForLogging(Lcom/netflix/mediaclient/media/PlayerType;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2013.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " android-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isAppUpgraded(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "appUpgraded"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static setAppUpgradedPrefBool(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "appUpgraded"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static updateAppUpgradedPrefs(Landroid/content/Context;)V
    .locals 10

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "manifestVersionCode"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    if-le v5, v4, :cond_2

    if-eq v4, v3, :cond_2

    move v3, v1

    :goto_0
    if-eq v5, v4, :cond_3

    move v0, v1

    :goto_1
    const-string/jumbo v6, "nf_utils"

    const-string/jumbo v7, "onApplicationStart lastVersionCode=%d currentVersionCode=%d appUpgraded=%b updateManifestVersionCode=%b"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v3, :cond_4

    const-string/jumbo v2, "nf_utils"

    const-string/jumbo v3, "setting app upgraded pref"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->setAppUpgradedPrefBool(Landroid/content/Context;Z)V

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    const-string/jumbo v0, "manifestVersionCode"

    invoke-static {p0, v0, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->isAppUpgraded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_utils"

    const-string/jumbo v3, "resetting app upgraded pref"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->setAppUpgradedPrefBool(Landroid/content/Context;Z)V

    goto :goto_2
.end method
