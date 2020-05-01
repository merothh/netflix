.class public Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "ExternalLinkActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalWeb"

.field private static final TAG_JS:Ljava/lang/String; = "ExternalLinkActivity_js"

.field private static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

.field private mWebViewVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URL is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a network URL!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;

    invoke-direct {v1, p0, v4}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebClient;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

    invoke-direct {v0, p0, v4}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->clearHistory()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$2;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->externalLink:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->setContentView(I)V

    const v0, 0x7f0f0180

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f0f017f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mFlipper:Landroid/widget/ViewFlipper;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "ExternalWeb"

    const-string/jumbo v1, "Received new intent when UI is visible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v0, "ExternalWeb"

    const-string/jumbo v1, "Started with no intent! It should no happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ExternalWeb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not a network URL! Stay!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->setWebViewVisibility(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewClient:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->clearHistory()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ExternalWeb"

    const-string/jumbo v1, "Started with no intent! It should no happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ExternalWeb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not a network URL! Destroy activity!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setWebViewVisibility(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewVisibility:Z

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ExternalWeb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WebView visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewVisibility:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->mWebViewVisibility:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAboutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
