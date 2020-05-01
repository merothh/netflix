.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$Dialog;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic a:Lo/JM$Dialog;

.field final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lo/JM$Dialog;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 8

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-object v2, v0, Lo/JM$Dialog;->b:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-object v3, v0, Lo/JM$Dialog;->c:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-object v4, v0, Lo/JM$Dialog;->d:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-object v5, v0, Lo/JM$Dialog;->e:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->a:Lo/JM$Dialog;

    iget-boolean v6, v0, Lo/JM$Dialog;->i:Z

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1$5;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;)V

    move-object v7, v0

    check-cast v7, Lo/ym;

    move-object v1, p1

    .line 64
    invoke-interface/range {v1 .. v7}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
