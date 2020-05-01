.class Lo/bj$Activity;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bj;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/bj;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/bj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lo/bj$Activity;->b:Lo/bj;

    iput-object p3, p0, Lo/bj$Activity;->a:Ljava/lang/String;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 106
    iput-object p2, p0, Lo/bj$Activity;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 117
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object v0, p0, Lo/bj$Activity;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/bj$Activity;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lo/bj;->d(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object p1, p1, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 110
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object v0, p0, Lo/bj$Activity;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/bj$Activity;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lo/bj;->d(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object p1, p1, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 124
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object v0, p0, Lo/bj$Activity;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/bj$Activity;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aeb;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lo/bj;->d(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lo/bj$Activity;->b:Lo/bj;

    iget-object p1, p1, Lo/bj;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    return-void
.end method
