.class public final Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;
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
        "Lkotlin/Pair<",
        "+",
        "Lo/AQ;",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Lo/aL;

.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lo/aL;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->c:Ljava/lang/Long;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->b:Lo/aL;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->d:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lo/AQ;",
            "+",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AQ;

    .line 147
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    .line 148
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 149
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->c:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 150
    iget-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->b:Lo/aL;

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->d:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    invoke-static {p1, v0, v1}, Lo/aL;->a(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->b:Lo/aL;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->c:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    const-string v3, "status.statusCode"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1}, Lo/aL;->b(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Long;Lcom/netflix/mediaclient/StatusCode;)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkNotificationHandler$triggerRatingInputNetworkCallIfRequired$$inlined$let$lambda$1;->e(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
