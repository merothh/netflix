.class final Lo/TrafficStats$TaskDescription;
.super Lio/reactivex/android/MainThreadDisposable;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TrafficStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final d:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZLio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 36
    iput-object p1, p0, Lo/TrafficStats$TaskDescription;->d:Landroid/view/View;

    .line 37
    iput-boolean p2, p0, Lo/TrafficStats$TaskDescription;->b:Z

    .line 38
    iput-object p3, p0, Lo/TrafficStats$TaskDescription;->a:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/TrafficStats$TaskDescription;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-boolean p1, p0, Lo/TrafficStats$TaskDescription;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/TrafficStats$TaskDescription;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lo/TrafficStats$TaskDescription;->a:Lio/reactivex/Observer;

    sget-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->a:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-boolean p1, p0, Lo/TrafficStats$TaskDescription;->b:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/TrafficStats$TaskDescription;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lo/TrafficStats$TaskDescription;->a:Lio/reactivex/Observer;

    sget-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->a:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
