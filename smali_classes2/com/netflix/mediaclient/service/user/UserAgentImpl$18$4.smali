.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;

.field final synthetic c:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 2156
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;->c:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
