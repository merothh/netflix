.class final Lo/VpnService$Activity;
.super Lio/reactivex/android/MainThreadDisposable;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final d:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 33
    iput-object p1, p0, Lo/VpnService$Activity;->a:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lo/VpnService$Activity;->d:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lo/VpnService$Activity;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lo/VpnService$Activity;->d:Lio/reactivex/Observer;

    sget-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->a:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDispose()V
    .locals 2

    .line 44
    iget-object v0, p0, Lo/VpnService$Activity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
