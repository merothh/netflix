.class final Lo/SslCertificate;
.super Lo/SntpClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SslCertificate$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SntpClient<",
        "Lo/ApfStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/SntpClient;-><init>()V

    .line 16
    iput-object p1, p0, Lo/SslCertificate;->e:Landroid/widget/SearchView;

    return-void
.end method


# virtual methods
.method protected a()Lo/ApfStats;
    .locals 3

    .line 29
    iget-object v0, p0, Lo/SslCertificate;->e:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ApfStats;->b(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lo/ApfStats;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/SslCertificate;->a()Lo/ApfStats;

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
            "Lo/ApfStats;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lo/ScoredNetwork;->c(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lo/SslCertificate$Activity;

    iget-object v1, p0, Lo/SslCertificate;->e:Landroid/widget/SearchView;

    invoke-direct {v0, v1, p1}, Lo/SslCertificate$Activity;-><init>(Landroid/widget/SearchView;Lio/reactivex/Observer;)V

    .line 24
    iget-object v1, p0, Lo/SslCertificate;->e:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 25
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
