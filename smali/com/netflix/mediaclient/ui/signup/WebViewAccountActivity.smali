.class public abstract Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;
.super Lcom/netflix/mediaclient/ui/login/AccountActivity;
.source "WebViewAccountActivity.java"


# static fields
.field private static final COOKIE_SUFFIX:Ljava/lang/String; = "; "

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en"

.field private static final NETFLIX_DOMAIN:Ljava/lang/String; = ".netflix.com"

.field private static final TAG:Ljava/lang/String; = "WebViewAccountActivity"

.field protected static final USE_LATEST_COOKIES:Ljava/lang/String; = "useDynecomCookies"


# instance fields
.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mSharedContextSessionUuid:Ljava/lang/String;

.field private mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

.field private mWebViewLoaded:Z

.field private mWebViewVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;-><init>()V

    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->updateToLatestNrmCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private buildNrmCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 336
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->netflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    const/4 v2, 0x1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method private cookiesIncludeNetflixId(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 258
    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 259
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 260
    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    const/4 v0, 0x1

    .line 264
    :cond_0
    return v0

    .line 259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enableWebViewDebugging()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to enable WebView Debugging. API Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method private getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 326
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 327
    goto :goto_0

    .line 325
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private setCookieAndSync([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 268
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 270
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 271
    const-string/jumbo v4, ".netflix.com"

    invoke-virtual {v1, v4, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 275
    return-void
.end method

.method private setNrmCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;Z)V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string/jumbo v1, ".netflix.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->cookiesIncludeNetflixId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 251
    :cond_0
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "using existing cookies. "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->buildNrmCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->appendCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setCookieAndSync([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateToLatestNrmCookies(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 286
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getCookieFromList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    array-length v6, v2

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_5

    aget-object v7, v2, v0

    .line 293
    invoke-static {v7}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 292
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 298
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 299
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/webapi/WebApiCommand;->getNetflixIdName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 305
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 306
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "; "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearCookies()V
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Removing cookies"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 357
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 359
    return-void
.end method

.method public abstract createJSBridge()Ljava/lang/Object;
.end method

.method public createWebViewClient()Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    return-object v0
.end method

.method public getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    return-object v0
.end method

.method public abstract getBootUrl()Ljava/lang/String;
.end method

.method public getDeviceLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "en"

    goto :goto_0
.end method

.method public abstract getErrorHandler()Ljava/lang/Runnable;
.end method

.method public abstract getNextTask()Ljava/lang/Runnable;
.end method

.method public abstract getTimeout()J
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWebViewLoaded()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewLoaded:Z

    return v0
.end method

.method protected noConnectivityWarning()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setContentView(I)V

    .line 93
    const v0, 0x7f0f034d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    .line 94
    const v0, 0x7f0f017f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mFlipper:Landroid/widget/ViewFlipper;

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->createWebViewClient()Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    .line 101
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->setWindowSecureFlag(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->onStop()V

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 3

    .prologue
    .line 175
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "UI ready to interact"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v1, 0x0

    const v2, 0x7f0801c0

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 206
    return-void
.end method

.method public provideTwoButtonDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 209
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v2, 0x7f0801c0

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f080120

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 210
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 212
    return-void
.end method

.method protected reload(Z)V
    .locals 2

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->clearCookies()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;->clearHistory()V

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method protected setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getBootUrl()Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 125
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->createJSBridge()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "nfandroid"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$2;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v4

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/signup/Bootloader;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    .line 145
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportStartSharedContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string/jumbo v1, ".netflix.com"

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "WebViewAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "All the cookies in a string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    const-string/jumbo v1, "useDynecomCookies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getNrmConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->setNrmCookies(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmConfigData;Z)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mUiBoot:Lcom/netflix/mediaclient/ui/signup/Bootloader;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mSharedContextSessionUuid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportStartSharedContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Adding timeout for webview to load"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :cond_0
    return-void

    :cond_1
    move v0, v7

    .line 154
    goto :goto_0
.end method

.method protected showToast(I)V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->showToast(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    return-void
.end method

.method protected startNextActivity(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    const-string/jumbo v0, "WebViewAccountActivity"

    const-string/jumbo v1, "Removing jumpToSignIn"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getNextTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {p0, v2, v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->overridePendingTransition(II)V

    .line 244
    :cond_0
    return-void
.end method

.method protected webViewVisibility(Z)V
    .locals 3

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    if-eq p1, v0, :cond_0

    .line 196
    const-string/jumbo v0, "WebViewAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebView visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 198
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->mWebViewVisibility:Z

    .line 200
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
