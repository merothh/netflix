.class public final Lo/HC;
.super Lo/FU;
.source ""


# instance fields
.field private c:Ljava/lang/Boolean;

.field public e:Lo/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/FU;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lo/ListView;
    .locals 2

    .line 16
    iget-object v0, p0, Lo/HC;->e:Lo/ListView;

    if-nez v0, :cond_0

    const-string v1, "button"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b(ZI)V
    .locals 6

    .line 25
    iget-object v0, p0, Lo/HC;->c:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-string v0, "Lookup.get<Context>().resources"

    const-string v2, "button"

    if-eqz p1, :cond_2

    .line 27
    iget-object v3, p0, Lo/HC;->e:Lo/ListView;

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

    invoke-virtual {v3, v0}, Lo/ListView;->setCompoundDrawablePadding(I)V

    .line 28
    iget-object v0, p0, Lo/HC;->e:Lo/ListView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p2}, Lo/ListView;->setText(I)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object p2, p0, Lo/HC;->e:Lo/ListView;

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

    invoke-virtual {p2, v0}, Lo/ListView;->setCompoundDrawablePadding(I)V

    .line 31
    iget-object p2, p0, Lo/HC;->e:Lo/ListView;

    if-nez p2, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lo/ListView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/HC;->c:Ljava/lang/Boolean;

    :cond_5
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p1, Lo/ListView;

    iput-object p1, p0, Lo/HC;->e:Lo/ListView;

    return-void
.end method
