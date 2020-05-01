.class Lo/aB$Application;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aB;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/aB;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/aB;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lo/aB$Application;->a:Lo/aB;

    iput-object p3, p0, Lo/aB$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 82
    iput-object p2, p0, Lo/aB$Application;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 95
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lo/aB$Application;->a:Lo/aB;

    iget-object v0, p0, Lo/aB$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/aB$Application;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lo/aB;->e(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lo/aB$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 87
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lo/aB$Application;->a:Lo/aB;

    iget-object v0, p0, Lo/aB$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/aB$Application;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lo/aB;->e(Lo/aB;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lo/aB$Application;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method
