.class Lo/aX$Activity;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aX;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Lo/aX;


# direct methods
.method constructor <init>(Lo/aX;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lo/aX$Activity;->e:Lo/aX;

    iput-object p3, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/aX$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 111
    iput-object p2, p0, Lo/aX$Activity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 124
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lo/aX$Activity;->e:Lo/aX;

    iget-object v0, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/aX$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p1

    iget-object v2, p0, Lo/aX$Activity;->c:Ljava/lang/String;

    invoke-static {v2}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lo/aX;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 116
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lo/aX$Activity;->e:Lo/aX;

    iget-object v0, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/aX$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lo/AX;->bb()Lo/AK;

    move-result-object p1

    iget-object v2, p0, Lo/aX$Activity;->c:Ljava/lang/String;

    invoke-static {v2}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lo/aX;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 119
    :cond_0
    iget-object p1, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 132
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lo/aX$Activity;->e:Lo/aX;

    iget-object v0, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/aX$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lo/Bb;->bb()Lo/AK;

    move-result-object p1

    iget-object v2, p0, Lo/aX$Activity;->c:Ljava/lang/String;

    invoke-static {v2}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lo/aX;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 135
    :cond_0
    iget-object p1, p0, Lo/aX$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method
