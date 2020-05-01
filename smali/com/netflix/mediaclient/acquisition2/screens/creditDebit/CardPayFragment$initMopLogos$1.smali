.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->H()V
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
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urls"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
