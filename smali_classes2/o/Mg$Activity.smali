.class Lo/Mg$Activity;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private a:Z

.field private final c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lo/Mg$Activity;->a:Z

    .line 220
    iput-object p2, p0, Lo/Mg$Activity;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 225
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 226
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lo/Mg$Activity;->a:Z

    if-nez p2, :cond_0

    .line 229
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object p1, p0, Lo/Mg$Activity;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 232
    iget-object p1, p0, Lo/Mg$Activity;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/LP;->c(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lo/Mg$Activity;->a:Z

    :cond_0
    return-void
.end method
