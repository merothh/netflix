.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 9

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->C()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {p1}, Lo/Am;->k()Lo/ds;

    move-result-object p1

    const-string v2, "serviceManager.esnProvider"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p1

    const-string v2, "serviceManager.esnProvider.esn"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lo/Base64;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->C()Landroid/webkit/WebView;

    move-result-object v2

    new-instance p1, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Emvco;

    .line 266
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$1;

    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$1;-><init>(Lo/Base64;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 267
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$2;

    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$2;-><init>(Lo/Base64;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    .line 265
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$Emvco;-><init>(Lo/alA;Lo/alA;Landroid/os/Handler;ILo/amc;)V

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->initWebView$default(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;ZILjava/lang/Object;)V

    return-void
.end method
