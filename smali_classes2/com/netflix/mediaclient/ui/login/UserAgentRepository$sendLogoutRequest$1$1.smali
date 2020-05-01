.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$SharedElementCallback;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic c:Lo/JM$SharedElementCallback;

.field final synthetic e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lo/JM$SharedElementCallback;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->c:Lo/JM$SharedElementCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->e:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1$3;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;)V

    check-cast v0, Lo/ym;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Lo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLogoutRequest$1$1;->a(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
