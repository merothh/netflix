.class Lo/IC$2;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IC;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IC;


# direct methods
.method constructor <init>(Lo/IC;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/IC$2;->d:Lo/IC;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/IC$2;->d:Lo/IC;

    invoke-virtual {v0}, Lo/IC;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->e()Z

    move-result p2

    if-nez p2, :cond_0

    .line 45
    iget-object p2, p0, Lo/IC$2;->d:Lo/IC;

    invoke-virtual {p2}, Lo/IC;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lo/abN;->e(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V

    :cond_0
    return-void
.end method
