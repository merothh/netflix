.class Lo/bb$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bb;->w_()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic c:Lo/bb;

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/bb;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/bb$TaskDescription;->c:Lo/bb;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 56
    iput-object p3, p0, Lo/bb$TaskDescription;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lo/bb$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .line 62
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lo/bb$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v8, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummaryOld;

    .line 64
    invoke-interface {p1}, Lo/AI;->getNumLoMos()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 65
    invoke-interface {p1}, Lo/AI;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lo/bb$TaskDescription;->a:Ljava/lang/String;

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v4, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummaryOld;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p2, v8}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lo/bb$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method
