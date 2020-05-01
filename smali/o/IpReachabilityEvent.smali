.class final Lo/IpReachabilityEvent;
.super Lo/SntpClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IpReachabilityEvent$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SntpClient<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/SntpClient;-><init>()V

    .line 14
    iput-object p1, p0, Lo/IpReachabilityEvent;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/IpReachabilityEvent;->d()Ljava/lang/CharSequence;

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
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lo/IpReachabilityEvent$ActionBar;

    iget-object v1, p0, Lo/IpReachabilityEvent;->e:Landroid/widget/TextView;

    invoke-direct {v0, v1, p1}, Lo/IpReachabilityEvent$ActionBar;-><init>(Landroid/widget/TextView;Lio/reactivex/Observer;)V

    .line 20
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 21
    iget-object p1, p0, Lo/IpReachabilityEvent;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected d()Ljava/lang/CharSequence;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/IpReachabilityEvent;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
