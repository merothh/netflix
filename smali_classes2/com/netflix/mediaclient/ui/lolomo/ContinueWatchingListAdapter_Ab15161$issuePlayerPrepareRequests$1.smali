.class public final Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JX;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/JX;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lo/JX;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->b:Lo/JX;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/akj;)V
    .locals 2

    .line 41
    sget-object p1, Lo/JU;->a:Lo/JU$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->b:Lo/JX;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0, v1}, Lo/JX;->a(Lo/JX;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;->b(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
