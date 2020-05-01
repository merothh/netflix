.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->A()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 2153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;)V"
        }
    .end annotation

    .line 2156
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;Lio/reactivex/ObservableEmitter;)V

    .line 2162
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/yQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/yQ;->i(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method
