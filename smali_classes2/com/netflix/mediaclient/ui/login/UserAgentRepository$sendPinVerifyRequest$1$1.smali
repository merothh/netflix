.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$AssistContent;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic e:Lo/JM$AssistContent;


# direct methods
.method public constructor <init>(Lo/JM$AssistContent;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->e:Lo/JM$AssistContent;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 4

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->e:Lo/JM$AssistContent;

    iget-object v0, v0, Lo/JM$AssistContent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->e:Lo/JM$AssistContent;

    iget-object v1, v1, Lo/JM$AssistContent;->e:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->e:Lo/JM$AssistContent;

    iget-object v2, v2, Lo/JM$AssistContent;->a:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1$5;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;)V

    check-cast v3, Lo/ym;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendPinVerifyRequest$1$1;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
