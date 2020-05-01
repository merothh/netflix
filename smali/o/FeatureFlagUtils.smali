.class public final Lo/FeatureFlagUtils;
.super Landroid/widget/LinearLayout;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/FeatureFlagUtils;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/FeatureFlagUtils;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/FeatureFlagUtils;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/moneyball/fields/BooleanField;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lo/LogWriter;

    invoke-virtual {p0}, Lo/FeatureFlagUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/LogWriter;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0, p2}, Lo/LogWriter;->setId(I)V

    .line 34
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lo/LogWriter;->setDeviceSelected(Z)V

    .line 36
    new-instance p2, Lo/FeatureFlagUtils$StateListAnimator;

    invoke-direct {p2, v0, p1}, Lo/FeatureFlagUtils$StateListAnimator;-><init>(Lo/LogWriter;Lcom/netflix/android/moneyball/fields/BooleanField;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Lo/LogWriter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {v0, p3}, Lo/LogWriter;->setText(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 46
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Lo/LogWriter;->setImageResource(I)V

    .line 50
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/FeatureFlagUtils;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/JsonScope;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JsonScope;

    .line 26
    invoke-virtual {v0}, Lo/JsonScope;->a()Lo/AutoGrowArray;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v1

    invoke-virtual {v0}, Lo/JsonScope;->e()I

    move-result v2

    invoke-virtual {v0}, Lo/JsonScope;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lo/JsonScope;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lo/FeatureFlagUtils;->a(Lcom/netflix/android/moneyball/fields/BooleanField;ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
