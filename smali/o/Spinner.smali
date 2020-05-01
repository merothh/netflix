.class public final Lo/Spinner;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/SlidingDrawer;

.field private c:Lo/EditText;

.field private final d:Lo/SimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/SimpleAdapter;Lo/SlidingDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/SlidingDrawer;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->c:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lo/Spinner;->d:Lo/SimpleAdapter;

    iput-object p3, p0, Lo/Spinner;->b:Lo/SlidingDrawer;

    return-void
.end method

.method private final a(Z)V
    .locals 7

    .line 67
    iget-object v0, p0, Lo/Spinner;->c:Lo/EditText;

    if-nez v0, :cond_0

    const-string v1, "loadingAndErrorWrapper"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 69
    iget-object v0, p0, Lo/Spinner;->d:Lo/SimpleAdapter;

    invoke-virtual {v0, p1}, Lo/SimpleAdapter;->d(Z)Lio/reactivex/Observable;

    move-result-object v1

    .line 71
    new-instance p1, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;-><init>(Lo/Spinner;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 81
    new-instance p1, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;-><init>(Lo/Spinner;)V

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/Spinner;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/Spinner;->a(Z)V

    return-void
.end method

.method public static final synthetic e(Lo/Spinner;)Lo/EditText;
    .locals 1

    .line 16
    iget-object p0, p0, Lo/Spinner;->c:Lo/EditText;

    if-nez p0, :cond_0

    const-string v0, "loadingAndErrorWrapper"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final d()Lo/SimpleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/Spinner;->d:Lo/SimpleAdapter;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/Spinner;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    if-ne p1, v0, :cond_1

    .line 35
    iget-object p1, p0, Lo/Spinner;->b:Lo/SlidingDrawer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/SlidingDrawer;->b()V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lo/Spinner;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->fz:I

    invoke-virtual {p0, p1}, Lo/Spinner;->setContentView(I)V

    .line 30
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 43
    new-instance v0, Lo/Space;

    iget-object v1, p0, Lo/Spinner;->d:Lo/SimpleAdapter;

    iget-object v2, p0, Lo/Spinner;->b:Lo/SlidingDrawer;

    invoke-direct {v0, v1, v2}, Lo/Space;-><init>(Lo/SimpleAdapter;Lo/SlidingDrawer;)V

    .line 44
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "select_recyclerview"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 45
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo/Spinner;->d:Lo/SimpleAdapter;

    invoke-virtual {v2}, Lo/SimpleAdapter;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->scrollToPosition(I)V

    .line 47
    :cond_0
    invoke-virtual {v0}, Lo/Space;->a()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 48
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    new-instance v1, Lo/Spinner$StateListAnimator;

    invoke-direct {v1, p0}, Lo/Spinner$StateListAnimator;-><init>(Lo/Spinner;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/Spinner;->e:Lio/reactivex/disposables/Disposable;

    .line 51
    new-instance v0, Lo/EditText;

    .line 52
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->rn:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 53
    new-instance v2, Lo/Spinner$Activity;

    invoke-direct {v2, p0}, Lo/Spinner$Activity;-><init>(Lo/Spinner;)V

    check-cast v2, Lo/DatePickerCalendarDelegate$Activity;

    .line 51
    invoke-direct {v0, v1, v2}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/Spinner;->c:Lo/EditText;

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lo/Spinner;->a(Z)V

    return-void
.end method
