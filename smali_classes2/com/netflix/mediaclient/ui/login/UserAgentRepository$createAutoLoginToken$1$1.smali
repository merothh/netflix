.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$Application;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic e:Lo/JM$Application;


# direct methods
.method public constructor <init>(Lo/JM$Application;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->e:Lo/JM$Application;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 3

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->e:Lo/JM$Application;

    iget-wide v0, v0, Lo/JM$Application;->d:J

    new-instance v2, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1$2;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;)V

    check-cast v2, Lo/ym;

    invoke-interface {p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->c(JLo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$createAutoLoginToken$1$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
