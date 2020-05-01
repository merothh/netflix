.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->a(Lo/GY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$3;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "post"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$3;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->B()Lo/WebViewProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/WebViewProvider;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$3;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
