.class final Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->m()Landroid/webkit/WebView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;->d:Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V

    return-void
.end method
