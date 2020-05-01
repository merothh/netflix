.class public final Lo/Vu;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Vh;


# instance fields
.field private final c:Landroid/widget/PopupMenu;

.field private final d:Lo/ImageSwitcher;


# direct methods
.method public constructor <init>(Lo/MenuInflater;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 23
    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ea:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Vu;->d:Lo/ImageSwitcher;

    .line 25
    new-instance p1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lo/Vu;->c:Landroid/widget/PopupMenu;

    .line 28
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object p1

    new-instance v0, Lo/Vu$3;

    invoke-direct {v0, p0}, Lo/Vu$3;-><init>(Lo/Vu;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 23
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic b(Lo/Vu;)Landroid/widget/PopupMenu;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Vu;->c:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method public static final synthetic b(Lo/Vu;Ljava/util/List;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/Vu;->d(Ljava/util/List;)V

    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/Vu;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 47
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    new-instance v0, Lo/Vu$ActionBar;

    invoke-direct {v0}, Lo/Vu$ActionBar;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;

    .line 48
    iget-object v4, p0, Lo/Vu;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;->label()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v0, v1, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 49
    new-instance v4, Lo/Vu$Activity;

    invoke-direct {v4, v2, p0}, Lo/Vu$Activity;-><init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;Lo/Vu;)V

    check-cast v4, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lo/Vu;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 69
    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lo/Vu$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/Vu$StateListAnimator;-><init>(Lo/Vu;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lo/Vu;->f()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public f()Lo/ImageSwitcher;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Vu;->d:Lo/ImageSwitcher;

    return-object v0
.end method
