.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$FragmentManager;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lo/JM$FragmentManager;


# direct methods
.method public constructor <init>(Lo/JM$FragmentManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->b:Lo/JM$FragmentManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->b:Lo/JM$FragmentManager;

    iget-object v0, v0, Lo/JM$FragmentManager;->c:Lo/ToggleButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1$4;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;)V

    check-cast v1, Lo/ym;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Lo/ToggleButton;Lo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUserByTokens$1$1;->b(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
