.class public Lcom/netflix/mediaclient/service/NetflixService$2$2;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lo/bV;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/bM$2;


# direct methods
.method public constructor <init>(Lo/bM$2;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->g(Lo/bM;)Lo/hY;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->e(Lo/bM;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->f(Lo/bM;)Lo/cd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->j(Lo/bM;)Lo/hM;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->i(Lo/bM;)Lo/xP;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->m(Lo/bM;)Lo/nQ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->l(Lo/bM;)Lo/pB;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->k(Lo/bM;)Lo/nC;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->n(Lo/bM;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->n(Lo/bM;)Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$2;->e:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->c(Lo/bM;)Lo/za;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
