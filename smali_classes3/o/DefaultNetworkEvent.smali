.class final Lo/DefaultNetworkEvent;
.super Lo/SntpClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultNetworkEvent$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SntpClient<",
        "Lo/ConnectStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/SntpClient;-><init>()V

    .line 15
    iput-object p1, p0, Lo/DefaultNetworkEvent;->d:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method protected a()Lo/ConnectStats;
    .locals 3

    .line 28
    iget-object v0, p0, Lo/DefaultNetworkEvent;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/DhcpErrorEvent;->b(Landroid/widget/SeekBar;IZ)Lo/DhcpErrorEvent;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/DefaultNetworkEvent;->a()Lo/ConnectStats;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lo/ConnectStats;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lo/ScoredNetwork;->c(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lo/DefaultNetworkEvent$StateListAnimator;

    iget-object v1, p0, Lo/DefaultNetworkEvent;->d:Landroid/widget/SeekBar;

    invoke-direct {v0, v1, p1}, Lo/DefaultNetworkEvent$StateListAnimator;-><init>(Landroid/widget/SeekBar;Lio/reactivex/Observer;)V

    .line 23
    iget-object v1, p0, Lo/DefaultNetworkEvent;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 24
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
