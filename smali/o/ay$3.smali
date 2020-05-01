.class Lo/ay$3;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ay;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ay;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ay;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/ay$3;->a:Lo/ay;

    iput-object p2, p0, Lo/ay$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/ay$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 160
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 161
    iget-object p2, p0, Lo/ay$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-interface {p1}, Lo/AI;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lo/ay$3;->d:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleGenre failed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/ay$3;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    iget-object p2, p0, Lo/ay$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 166
    :goto_0
    iget-object p1, p0, Lo/ay$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method
