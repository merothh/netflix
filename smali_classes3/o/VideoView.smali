.class public final Lo/VideoView;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VideoView$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/VideoView$ActionBar;


# instance fields
.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VideoView$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VideoView$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/VideoView;->a:Lo/VideoView$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/VideoView;->c:Lio/reactivex/subjects/PublishSubject;

    .line 50
    iget-object p1, p0, Lo/VideoView;->c:Lio/reactivex/subjects/PublishSubject;

    .line 51
    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "orientations\n        .di\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/VideoView;->e:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public final b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/VideoView;->e:Lio/reactivex/Observable;

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x140

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x168

    if-lt p1, v0, :cond_1

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x28

    if-gt p1, v0, :cond_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xe6

    if-lt p1, v0, :cond_3

    const/16 v0, 0x136

    if-gt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8c

    if-lt p1, v0, :cond_4

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_4

    goto :goto_0

    .line 68
    :cond_4
    :goto_1
    iget-object p1, p0, Lo/VideoView;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
