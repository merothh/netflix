.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1$4;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1$4;->d:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1$4;->d:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 121
    sget-object v1, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 123
    new-instance v1, Lo/Zx$TaskDescription;

    .line 124
    check-cast p1, Lo/Bc;

    .line 123
    invoke-direct {v1, p1, p2}, Lo/Zx$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 122
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 128
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
