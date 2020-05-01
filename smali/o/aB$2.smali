.class Lo/aB$2;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aB;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/aB;


# direct methods
.method constructor <init>(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/aB$2;->e:Lo/aB;

    iput-object p2, p0, Lo/aB$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/aB$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/aB$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/AR;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 65
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 66
    iget-object p2, p0, Lo/aB$2;->e:Lo/aB;

    iget-object v0, p0, Lo/aB$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    iget-object v1, p0, Lo/aB$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/aB$2;->c:Ljava/lang/String;

    invoke-static {p2, v0, p1, v1, v2}, Lo/aB;->e(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixComDownloadHandler - got error trying to fetch video summary for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aB$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 69
    iget-object p1, p0, Lo/aB$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
