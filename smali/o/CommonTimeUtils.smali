.class public final Lo/CommonTimeUtils;
.super Lo/Broadcaster;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CommonTimeUtils$TaskDescription;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/drawable/ColorDrawable;

.field public static final e:Lo/CommonTimeUtils$TaskDescription;


# instance fields
.field private b:Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CommonTimeUtils$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CommonTimeUtils$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/CommonTimeUtils;->e:Lo/CommonTimeUtils$TaskDescription;

    .line 26
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lo/CommonTimeUtils;->a:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Lo/CountDownTimer;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CountDownTimer;",
            "Lio/reactivex/Observable<",
            "Lo/Build;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Lo/UpdateLock;

    invoke-direct {p0, v0, p2}, Lo/Broadcaster;-><init>(Lo/UpdateLock;Lio/reactivex/Observable;)V

    .line 32
    new-instance v0, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/mdxpanel/bif/MdxBifPreviewUIPresenter$1;-><init>(Lo/CommonTimeUtils;Lo/CountDownTimer;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 14
    sget-object v0, Lo/CommonTimeUtils;->a:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public static final synthetic c(Lo/CommonTimeUtils;)Lo/aeA;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lo/CommonTimeUtils;->b()Lo/aeA;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/CommonTimeUtils;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;

    return-object v0
.end method

.method public final e(Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/CommonTimeUtils;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;

    return-void
.end method
