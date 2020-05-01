.class public final Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/aL;

.field final synthetic d:Ljava/lang/Long;

.field final synthetic e:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lo/aL;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->d:Ljava/lang/Long;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->c:Lo/aL;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->e:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->a:Lcom/netflix/mediaclient/StatusCode;

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->c:Lo/aL;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->d:Ljava/lang/Long;

    const-string v3, "errorStatus"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1}, Lo/aL;->b(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$2;->e(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
