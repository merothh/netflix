.class public final Lo/YG;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YG$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/YD;",
        "Lo/YB;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/YG$StateListAnimator;


# instance fields
.field private b:Lio/reactivex/disposables/Disposable;

.field private final c:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/YD;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/YH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YG$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YG$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/YG;->e:Lo/YG$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/YH;Lio/reactivex/subjects/Subject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/YH;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/YD;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p2

    check-cast v0, Lio/reactivex/Observable;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/UpdateLock;

    move-object v2, p1

    check-cast v2, Lo/UpdateLock;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/YG;->d:Lo/YH;

    iput-object p2, p0, Lo/YG;->c:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method public synthetic constructor <init>(Lo/YH;Lio/reactivex/subjects/Subject;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 18
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object p2

    const-string p3, "PublishSubject.create<Pr\u2026teEvent>().toSerialized()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/YG;-><init>(Lo/YH;Lio/reactivex/subjects/Subject;)V

    return-void
.end method

.method private final a(Lo/YN;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 59
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 60
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/YN;->a(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {p1}, Lo/YN;->d()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 62
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YN;->b(Lo/CompatibilityInfo;)V

    .line 63
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YN;->b(Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 65
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YN;->e(Landroid/graphics/Bitmap;)V

    .line 66
    invoke-virtual {p1}, Lo/YN;->e()Lo/CompatibilityInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo/CompatibilityInfo;->close()V

    .line 67
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YN;->a(Lo/CompatibilityInfo;)V

    .line 68
    invoke-virtual {p3}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/YN;->e(Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 70
    iget-object p2, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {p2, p1}, Lo/YH;->d(Lo/YN;)V

    return-void
.end method

.method public static final synthetic b(Lo/YG;Lo/YN;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lo/YG;->a(Lo/YN;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/YG;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 50
    :cond_0
    iget-object v0, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {v0}, Lo/YH;->h()V

    .line 51
    iget-object v0, p0, Lo/YG;->c:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    return-void
.end method

.method public final a(Lo/YN;)V
    .locals 6

    const-string v0, "uiModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 25
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 26
    iget-object v1, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {v1}, Lo/YH;->y()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    sget-object v2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    const-string v3, "context"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v2

    .line 30
    sget-object v3, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    iget-object v4, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {v4}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v3

    invoke-virtual {p1}, Lo/YN;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v3

    .line 29
    invoke-interface {v2, v3}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v2

    .line 31
    sget-object v3, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v3, v1}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v1

    .line 32
    sget-object v3, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    iget-object v5, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {v5}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v3

    invoke-virtual {p1}, Lo/YN;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v3

    .line 31
    invoke-interface {v1, v3}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lio/reactivex/Single;

    aput-object v2, v3, v0

    aput-object v1, v3, v4

    .line 35
    invoke-static {v3}, Lo/akz;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lo/YG$ActionBar;->b:Lo/YG$ActionBar;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-static {v0, v1}, Lio/reactivex/Single;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "Single.zip(arrayListOf(b\u2026le, titleSingle), { it })"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;-><init>(Lo/YG;Lo/YN;)V

    check-cast v1, Lo/alA;

    .line 44
    sget-object p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;->d:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$3;

    check-cast p1, Lo/alA;

    .line 36
    invoke-static {v0, p1, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/YG;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final b(Lo/YN;)V
    .locals 1

    const-string v0, "uiModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lo/YG;->d:Lo/YH;

    invoke-virtual {v0, p1}, Lo/YH;->d(Lo/YN;)V

    return-void
.end method
