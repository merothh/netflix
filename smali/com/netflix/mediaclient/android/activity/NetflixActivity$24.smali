.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->irisRefresh(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/Am;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;->e:Lo/Am;

    invoke-direct {p0}, Lo/aef;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/akj;)V
    .locals 1

    const-string p1, "NetflixActivity"

    const-string v0, "from homeLolomoLoadEnded: irisFetch"

    .line 1180
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;->e:Lo/Am;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->irisRefreshImpl(Lo/Am;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1177
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;->a(Lo/akj;)V

    return-void
.end method
