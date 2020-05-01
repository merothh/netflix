.class public final Lcom/netflix/mediaclient/util/AppStoreHelper;
.super Ljava/lang/Object;
.source "AppStoreHelper.java"


# static fields
.field private static final AMAZON_APP_STORE_URI:Ljava/lang/String; = "amzn://apps/android?p=com.netflix.mediaclient"

.field private static final ANDROID_PACKAGE_PREFIX:Ljava/lang/String; = "com.android."

.field private static final GOOGLE_PACKAGE_PREFIX:Ljava/lang/String; = "com.google."

.field private static final INSTALL_SOURCE_AMAZON:Ljava/lang/String; = "amazon"

.field private static final INSTALL_SOURCE_GOOGLE:Ljava/lang/String; = "google"

.field private static final INSTALL_SOURCE_SIDELOAD:Ljava/lang/String; = "sideload"

.field private static final NOOK_APP_STORE_ACTION:Ljava/lang/String; = "com.bn.sdk.shop.details"

.field private static final NOOK_APP_STORE_NETFLIX_EAN:Ljava/lang/String; = "2940043872739"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final PLAY_STORE_HTTPS_LINK:Ljava/lang/String; = "https://market.android.com/details?id=com.netflix.mediaclient"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id=com.netflix.mediaclient"

.field private static final REFERRER:Ljava/lang/String; = "referrer"

.field private static final TAG:Ljava/lang/String; = "nf_appstorehelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAmazonStoreIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "amzn://apps/android?p=com.netflix.mediaclient"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstallationSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AppStoreHelper;->isPlayStoreInstallSource(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "google"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->isAmazonStoreInstallSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "amazon"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sideload"

    goto :goto_0
.end method

.method public static final getNookStoreIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.bn.sdk.shop.details"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "product_details_ean"

    const-string/jumbo v2, "2940043872739"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final getPlayStoreIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "market://details?id=com.netflix.mediaclient"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPlayStoreLinkForInstallation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https://market.android.com/details?id=com.netflix.mediaclient"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "referrer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUpdateSourceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->isAmazonStoreInstallSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getAmazonStoreIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_appstorehelper"

    const-string/jumbo v2, "App Update Source is Amazon App Store"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getPlayStoreIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_appstorehelper"

    const-string/jumbo v2, "App Update Source is Google Play Store"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_appstorehelper"

    const-string/jumbo v1, "Google Play Store is not installed or was not setup."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getNookStoreIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_appstorehelper"

    const-string/jumbo v2, "App Update Source is Nook App Store"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getAmazonStoreIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nf_appstorehelper"

    const-string/jumbo v2, "App Update Source is Amazon App Store"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isAmazonStoreInstallSource()Z
    .locals 2

    invoke-static {}, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->isCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_appstorehelper"

    const-string/jumbo v1, "Installation source is Amazon App Store."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPlayStoreInstallSource(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.netflix.mediaclient"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_appstorehelper"

    const-string/jumbo v1, "Installation source is Google Play Store."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
