.class public final Lo/Fh;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fh$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/Fh$Application;


# instance fields
.field private a:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/aka;

.field private c:Z

.field private final e:I

.field private final h:Lo/aka;

.field private final j:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fh$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fh$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fh;->d:Lo/Fh$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Fh;->j:Lio/reactivex/Observable;

    .line 30
    new-instance p2, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$uiView$2;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fh;->b:Lo/aka;

    .line 34
    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->getId()I

    move-result p1

    iput p1, p0, Lo/Fh;->e:I

    .line 38
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;-><init>(Lo/Fh;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fh;->h:Lo/aka;

    return-void
.end method

.method public static final synthetic c(Lo/Fh;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/Fh;->i()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Fh;)Lo/CompatibilityInfo;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Fh;->a:Lo/CompatibilityInfo;

    return-object p0
.end method

.method public static final synthetic d(Lo/Fh;Lo/CompatibilityInfo;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/Fh;->a:Lo/CompatibilityInfo;

    return-void
.end method

.method public static final synthetic d(Lo/Fh;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/Fh;->c:Z

    return-void
.end method

.method private final i()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lo/Fh;->h:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 34
    iget v0, p0, Lo/Fh;->e:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lo/Fh;->c:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lo/Fh;->b()V

    .line 65
    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uiView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    .line 70
    sget-object v1, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {v1, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lo/Fh;->j:Lio/reactivex/Observable;

    invoke-virtual {v0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object v0

    check-cast v0, Lio/reactivex/CompletableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->takeUntil(Lio/reactivex/CompletableSource;)Lio/reactivex/Single;

    move-result-object p1

    .line 73
    new-instance v0, Lo/Fh$TaskDescription;

    invoke-direct {v0, p0}, Lo/Fh$TaskDescription;-><init>(Lo/Fh;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 82
    new-instance v1, Lo/Fh$Activity;

    invoke-direct {v1, p0}, Lo/Fh$Activity;-><init>(Lo/Fh;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 72
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "ImageLoaderRepository.ge\u2026      }\n                )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lo/Fh;->a:Lo/CompatibilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 93
    check-cast v0, Lo/CompatibilityInfo;

    iput-object v0, p0, Lo/Fh;->a:Lo/CompatibilityInfo;

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public f()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/Fh;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method
