.class public Lo/KH;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
.source ""


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lo/KH;
    .locals 3

    .line 30
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance p0, Lo/KH;

    invoke-direct {p0, v0}, Lo/KH;-><init>(Landroid/view/View;)V

    return-object p0
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 5

    if-nez p1, :cond_0

    .line 46
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Unknown view type, got null lomo"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Unknown view type, got type=%s, class=%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
