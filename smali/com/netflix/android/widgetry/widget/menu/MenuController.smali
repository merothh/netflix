.class public abstract Lcom/netflix/android/widgetry/widget/menu/MenuController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/OfPrimitive;"
    }
.end annotation


# instance fields
.field private final dismissClickListener:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissClicks:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final itemClickSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final itemClicks:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->title:Ljava/lang/CharSequence;

    .line 17
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<T>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->itemClickSubject:Lio/reactivex/subjects/PublishSubject;

    .line 18
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<Unit>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissSubject:Lio/reactivex/subjects/PublishSubject;

    .line 19
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->itemClickSubject:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_1

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->itemClicks:Lio/reactivex/Observable;

    .line 20
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissSubject:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_0

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClicks:Lio/reactivex/Observable;

    .line 22
    new-instance p1, Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;

    invoke-direct {p1, p0}, Lcom/netflix/android/widgetry/widget/menu/MenuController$dismissClickListener$1;-><init>(Lcom/netflix/android/widgetry/widget/menu/MenuController;)V

    check-cast p1, Lo/alA;

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClickListener:Lo/alA;

    return-void

    .line 20
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type io.reactivex.Observable<kotlin.Unit>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type io.reactivex.Observable<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;ILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 15
    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addFooters()V
    .locals 3

    .line 55
    new-instance v0, Lo/TokenWatcher;

    invoke-direct {v0}, Lo/TokenWatcher;-><init>()V

    const-string v1, "menuBottomPadding"

    .line 56
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/TokenWatcher;->e(Ljava/lang/CharSequence;)Lo/TokenWatcher;

    move-result-object v0

    .line 57
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 65
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/TokenWatcher;->d(I)Lo/TokenWatcher;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClickListener:Lo/alA;

    if-eqz v1, :cond_0

    new-instance v2, Lo/SystemUpdateManager;

    invoke-direct {v2, v1}, Lo/SystemUpdateManager;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/TokenWatcher;->b(Landroid/view/View$OnClickListener;)Lo/TokenWatcher;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 54
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method public addHeaders()V
    .locals 4

    .line 42
    new-instance v0, Lo/TestLooperManager;

    invoke-direct {v0}, Lo/TestLooperManager;-><init>()V

    const-string v1, "menuTitle"

    .line 43
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/TestLooperManager;->e(Ljava/lang/CharSequence;)Lo/TestLooperManager;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/TestLooperManager;->b(Ljava/lang/CharSequence;)Lo/TestLooperManager;

    move-result-object v0

    const/16 v1, 0x5a

    int-to-float v1, v1

    .line 63
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 64
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Lookup.get<Context>().resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    .line 63
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 45
    invoke-virtual {v0, v1}, Lo/TestLooperManager;->d(I)Lo/TestLooperManager;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClickListener:Lo/alA;

    if-eqz v1, :cond_0

    new-instance v2, Lo/SystemUpdateManager;

    invoke-direct {v2, v1}, Lo/SystemUpdateManager;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/TestLooperManager;->b(Landroid/view/View$OnClickListener;)Lo/TestLooperManager;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 41
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method public abstract addItems()V
.end method

.method public buildModels()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->addHeaders()V

    .line 28
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->addItems()V

    .line 29
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->addFooters()V

    return-void
.end method

.method public final getDismissClickListener()Lo/alA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alA<",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClickListener:Lo/alA;

    return-object v0
.end method

.method public final getDismissClicks()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissClicks:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final getDismissSubject()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->dismissSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final getItemClickSubject()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->itemClickSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final getItemClicks()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->itemClicks:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lo/OfPrimitive;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuController;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
