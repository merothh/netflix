.class public final Lo/Hz;
.super Lo/FU;
.source ""


# instance fields
.field public a:Lo/HorizontalScrollView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lo/FU;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/Hz;->b:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    return-void
.end method

.method public final d()Lo/HorizontalScrollView;
    .locals 2

    .line 44
    iget-object v0, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    if-nez v0, :cond_0

    const-string v1, "button"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d(ZI)V
    .locals 6

    const-string v0, "Lookup.get<Context>().resources"

    const/4 v1, 0x1

    const-string v2, "button"

    if-eqz p1, :cond_2

    .line 54
    iget-object v3, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    if-nez v3, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0x8

    int-to-float v4, v4

    .line 64
    sget-object v5, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 65
    const-class v5, Landroid/content/Context;

    invoke-static {v5}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Lo/HorizontalScrollView;->setCompoundDrawablePadding(I)V

    .line 55
    iget-object v0, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p2}, Lo/HorizontalScrollView;->setText(I)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object p2, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    if-nez p2, :cond_3

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    int-to-float v3, v3

    .line 66
    sget-object v4, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 67
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lo/HorizontalScrollView;->setCompoundDrawablePadding(I)V

    .line 58
    iget-object p2, p0, Lo/Hz;->a:Lo/HorizontalScrollView;

    if-nez p2, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    iput-boolean p1, p0, Lo/Hz;->b:Z

    return-void
.end method
