.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM$PictureInPictureParams;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic b:Lo/JM$PictureInPictureParams;

.field final synthetic c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lo/JM$PictureInPictureParams;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1;->b:Lo/JM$PictureInPictureParams;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1$4;-><init>(Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1;)V

    check-cast v0, Lo/ym;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->a(Lo/ym;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginUsingExistingTokens$1$1;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
