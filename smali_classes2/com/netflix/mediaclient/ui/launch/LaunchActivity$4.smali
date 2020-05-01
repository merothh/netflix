.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic c:Lo/Am;

.field final synthetic e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/Am;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->c:Lo/Am;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/JM$TaskDescription;)V
    .locals 1

    .line 611
    invoke-virtual {p1}, Lo/JM$TaskDescription;->d()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 612
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {p1}, Lo/abR;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->c:Lo/Am;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 608
    check-cast p1, Lo/JM$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->c(Lo/JM$TaskDescription;)V

    return-void
.end method
