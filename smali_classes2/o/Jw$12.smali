.class Lo/Jw$12;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lo/Jw$12;->c:Lo/Jw;

    iput-object p3, p0, Lo/Jw$12;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 3

    .line 609
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lo/Jw$12;->c:Lo/Jw;

    invoke-static {v0, p1}, Lo/Jw;->c(Lo/Jw;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lo/Jw$12;->c:Lo/Jw;

    invoke-static {v0}, Lo/Jw;->o(Lo/Jw;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/Jw$12;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lo/Jw;->a(Lo/Jw;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 606
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lo/Jw$12;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method
