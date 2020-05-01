.class public final Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM;->c(Ljava/lang/ref/WeakReference;Lo/CameraPrewarmService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lio/reactivex/ObservableEmitter<",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        ">;",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;->b:Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lio/reactivex/ObservableEmitter;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            ">;",
            "Lcom/netflix/mediaclient/service/user/UserAgent;",
            ")V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 50
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lio/reactivex/ObservableEmitter;

    check-cast p2, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendUserAgent$1;->b(Lio/reactivex/ObservableEmitter;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
