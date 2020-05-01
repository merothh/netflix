.class final Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;->handlePaypalCallback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->this$0:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->this$0:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;->access$getOnReceivePaypalToken$p(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;)Lo/alN;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView$handlePaypalCallback$1;->$token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
