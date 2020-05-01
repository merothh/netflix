.class Lo/aX$3;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aX;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/AK;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic d:Lo/aX;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method constructor <init>(Lo/aX;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/aX$3;->d:Lo/aX;

    iput-object p2, p0, Lo/aX$3;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lo/aX$3;->a:Lo/AK;

    iput-object p4, p0, Lo/aX$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lo/aX$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 156
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    .line 162
    iget-object p1, p0, Lo/aX$3;->d:Lo/aX;

    iget-object p2, p0, Lo/aX$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lo/aX$3;->a:Lo/AK;

    iget-object v1, p0, Lo/aX$3;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/aX$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/aX;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method
