.class public final Lo/FL$ActionBar$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$ActionBar;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/alB;

.field final synthetic e:Lo/FL$ActionBar;


# direct methods
.method constructor <init>(Lo/FL$ActionBar;Lo/alB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB;",
            ")V"
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lo/FL$ActionBar$ActionBar;->e:Lo/FL$ActionBar;

    iput-object p2, p0, Lo/FL$ActionBar$ActionBar;->d:Lo/alB;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-super {p0, p1, p2}, Lo/cq;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 523
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-16063: Error when retrying to fetch seasons list"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lo/FL$ActionBar$ActionBar;->e:Lo/FL$ActionBar;

    iget-object p1, p1, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Fragment;

    invoke-direct {v0, p2}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 526
    iget-object p1, p0, Lo/FL$ActionBar$ActionBar;->e:Lo/FL$ActionBar;

    iget-object p1, p1, Lo/FL$ActionBar;->b:Lo/alA;

    invoke-interface {p1, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 528
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 535
    :cond_1
    iget-object p1, p0, Lo/FL$ActionBar$ActionBar;->d:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 529
    :cond_2
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-16063: Seasons list is still empty after retry"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lo/FL$ActionBar$ActionBar;->e:Lo/FL$ActionBar;

    iget-object p1, p1, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Fragment;

    invoke-direct {v0, p2}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 531
    iget-object p1, p0, Lo/FL$ActionBar$ActionBar;->e:Lo/FL$ActionBar;

    iget-object p1, p1, Lo/FL$ActionBar;->b:Lo/alA;

    invoke-interface {p1, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
