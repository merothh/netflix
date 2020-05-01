.class final Lo/DefaultNetworkEvent$StateListAnimator;
.super Lio/reactivex/android/MainThreadDisposable;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultNetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Landroid/widget/SeekBar;

.field private final d:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lo/ConnectStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "Lio/reactivex/Observer<",
            "-",
            "Lo/ConnectStats;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 36
    iput-object p1, p0, Lo/DefaultNetworkEvent$StateListAnimator;->b:Landroid/widget/SeekBar;

    .line 37
    iput-object p2, p0, Lo/DefaultNetworkEvent$StateListAnimator;->d:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/DefaultNetworkEvent$StateListAnimator;->b:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lo/DefaultNetworkEvent$StateListAnimator;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/DefaultNetworkEvent$StateListAnimator;->d:Lio/reactivex/Observer;

    invoke-static {p1, p2, p3}, Lo/DhcpErrorEvent;->b(Landroid/widget/SeekBar;IZ)Lo/DhcpErrorEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lo/DefaultNetworkEvent$StateListAnimator;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lo/DefaultNetworkEvent$StateListAnimator;->d:Lio/reactivex/Observer;

    invoke-static {p1}, Lo/DhcpClientEvent;->a(Landroid/widget/SeekBar;)Lo/DhcpClientEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/DefaultNetworkEvent$StateListAnimator;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/DefaultNetworkEvent$StateListAnimator;->d:Lio/reactivex/Observer;

    invoke-static {p1}, Lo/IpManagerEvent;->c(Landroid/widget/SeekBar;)Lo/IpManagerEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
