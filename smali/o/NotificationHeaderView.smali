.class public final Lo/NotificationHeaderView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final c:Lo/aka;

.field private final e:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lo/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardDeviceImageLinearLayout$2;-><init>(Lo/NotificationHeaderView;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/NotificationHeaderView;->e:Lo/aka;

    .line 18
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardStreamImageLinearLayout$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardImagesGroupView$planCardStreamImageLinearLayout$2;-><init>(Lo/NotificationHeaderView;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/NotificationHeaderView;->c:Lo/aka;

    .line 21
    invoke-virtual {p0, v0}, Lo/NotificationHeaderView;->setOrientation(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lo/NotificationHeaderView;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final b(III)Landroid/widget/ImageView;
    .locals 2

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 47
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2, p2, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final d()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lo/NotificationHeaderView;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "drawableList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lo/NotificationHeaderView;->d()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 28
    invoke-direct {p0}, Lo/NotificationHeaderView;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ae:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v0, p2, v2}, Lo/NotificationHeaderView;->b(III)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "drawableList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lo/NotificationHeaderView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 37
    invoke-direct {p0}, Lo/NotificationHeaderView;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lo/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ad:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v0, p2, v2}, Lo/NotificationHeaderView;->b(III)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
