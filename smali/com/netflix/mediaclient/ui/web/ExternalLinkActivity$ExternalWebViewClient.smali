.class Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ExternalLinkActivity.java"


# instance fields
.field private mClearHistory:Z

.field private mCurrentPageURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;-><init>(Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;)V

    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->mClearHistory:Z

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->mClearHistory:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->mCurrentPageURL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->mClearHistory:Z

    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->mCurrentPageURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity$ExternalWebViewClient;->this$0:Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/web/ExternalLinkActivity;->setWebViewVisibility(Z)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
