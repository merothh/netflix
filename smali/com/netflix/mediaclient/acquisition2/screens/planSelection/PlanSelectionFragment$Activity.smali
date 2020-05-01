.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;
.super Lo/AccessibilityClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupInlineWarningView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p1, p2}, Lo/AccessibilityClickableSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;)Landroid/view/View;
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 263
    invoke-super {p0, p1}, Lo/AccessibilityClickableSpan;->a(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lo/ApplicationLoaders;

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a()Landroid/view/View;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lo/SSLCertificateSocketFactory;->a(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "RxView.globalLayouts(this).map(AnyToUnit)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 268
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;->a(Ljava/lang/String;)V

    return-void
.end method
