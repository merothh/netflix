.class public final Lo/WebViewLibraryLoader;
.super Lo/WebViewFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/WebViewFactory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/WebViewLibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/WebViewLibraryLoader;

    invoke-direct {v0}, Lo/WebViewLibraryLoader;-><init>()V

    sput-object v0, Lo/WebViewLibraryLoader;->e:Lo/WebViewLibraryLoader;

    .line 22
    invoke-super {v0}, Lo/WebViewFactory;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    sput-object v0, Lo/WebViewLibraryLoader;->b:Lio/reactivex/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/WebViewFactory;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lo/WebViewLibraryLoader;->b:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final e(ZZ)V
    .locals 3

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lo/WebViewFactory;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 35
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 52
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 53
    const-class p2, Landroid/media/AudioManager;

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    .line 36
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 37
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v1

    mul-float v2, v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, p2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method
