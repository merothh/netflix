.class public final Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

.field private static final JAVASCRIPT_OBJECT_NAME:Ljava/lang/String; = "__NETFLIX_ANDROID_BRIDGE__"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic initWebView$default(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 17
    check-cast p2, Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->initWebView(Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;Z)V

    return-void
.end method


# virtual methods
.method public final initWebView(Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    const-string v0, "webView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 26
    new-instance p3, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$initWebView$1;

    invoke-direct {p3, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$initWebView$1;-><init>(Landroid/webkit/WebView;)V

    check-cast p3, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const-string v0, "webView.settings"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    new-instance p3, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Common;

    invoke-direct {p3}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Common;-><init>()V

    const-string v0, "__NETFLIX_ANDROID_BRIDGE__"

    .line 44
    invoke-virtual {p1, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
