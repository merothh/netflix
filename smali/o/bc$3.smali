.class Lo/bc$3;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bc;->a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lo/bc;


# direct methods
.method constructor <init>(Lo/bc;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iput-object p2, p0, Lo/bc$3;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method

.method static synthetic b(Lo/bc$3;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/bc$3;->e(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic e(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 73
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 57
    invoke-super {p0, p1, p2}, Lo/Ai;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string v0, "NflxHandler"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    const-string v0, "%s: onVideoMaturityChecked response is null"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p2, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/bc;->c(Lo/bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto/16 :goto_0

    .line 61
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "%s: status error - %s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p2, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/bc;->c(Lo/bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;->isAppropriate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lo/bc$3;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 66
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    new-instance p1, Lo/PendingIntent$Activity;

    iget-object p2, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p2, p2, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, p2, v0}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qL:I

    .line 70
    invoke-virtual {p1, p2}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v0, Lo/bg;

    invoke-direct {v0, p0}, Lo/bg;-><init>(Lo/bc$3;)V

    .line 71
    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    .line 81
    iget-object p1, p0, Lo/bc$3;->d:Lo/bc;

    iget-object p1, p1, Lo/bc;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :goto_0
    return-void
.end method
