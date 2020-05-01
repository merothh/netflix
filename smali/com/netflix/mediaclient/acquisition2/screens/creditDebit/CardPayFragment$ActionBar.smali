.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/VrListenerService$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Landroid/webkit/WebView;

.field private final b:Ljava/lang/String;

.field private c:Lio/reactivex/disposables/Disposable;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataCollectionUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataCollectionPostData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Landroid/webkit/WebView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public d(ILandroid/view/View;Lo/SynthesisPlaybackQueueItem;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object p3, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p3}, Lo/EventLogger;->b()Lo/FontConfig;

    move-result-object p3

    invoke-virtual {p3}, Lo/FontConfig;->e()I

    move-result p3

    if-eq p1, p3, :cond_0

    sget-object p3, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p3}, Lo/EventLogger;->d()Lo/FontConfig;

    move-result-object p3

    invoke-virtual {p3}, Lo/FontConfig;->e()I

    move-result p3

    if-ne p1, p3, :cond_1

    .line 324
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p2, "editText"

    .line 326
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    .line 343
    invoke-static {p2}, Lo/SSLCertificateSocketFactory;->d(Landroid/view/View;)Lo/SntpClient;

    move-result-object p3

    const-string v0, "RxView.focusChanges(this)"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-static {p2}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p3, p2}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    const-wide/16 v0, 0x1

    .line 328
    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object p2

    .line 329
    new-instance p3, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;

    invoke-direct {p3, p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;Landroid/widget/EditText;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;->c:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method
