.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$16$1;
.super Lo/yj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/SingleEmitter;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 2140
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$16$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$16$1;->b:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lo/yj;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$16$1;->b:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
