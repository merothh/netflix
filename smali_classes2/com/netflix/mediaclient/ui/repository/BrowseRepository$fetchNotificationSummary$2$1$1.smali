.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->d(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1$1;->e:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1$1;->e:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 173
    sget-object v1, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 175
    new-instance v1, Lo/Zx$StateListAnimator;

    invoke-direct {v1, p1, p2}, Lo/Zx$StateListAnimator;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 174
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 180
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
