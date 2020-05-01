.class public final Lo/KK;
.super Lo/KF;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KK$Application;,
        Lo/KK$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/KK$StateListAnimator;

.field private static final f:I


# instance fields
.field private final c:Landroid/widget/TextView;

.field private final d:Lo/KK$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/KK$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KK$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/KK;->a:Lo/KK$StateListAnimator;

    .line 139
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 140
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Lookup.get<Context>().resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, -0x40400000    # -1.5f

    const/4 v2, 0x1

    .line 132
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 136
    sput v0, Lo/KK;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRetryListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lo/KF;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V

    .line 41
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jU:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/KK;->c:Landroid/widget/TextView;

    .line 43
    new-instance p2, Lo/KK$ActionBar;

    sget-object p3, Lo/KK;->a:Lo/KK$StateListAnimator;

    invoke-virtual {p3}, Lo/KK$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lo/KK$ActionBar;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p2, p0, Lo/KK;->d:Lo/KK$ActionBar;

    .line 63
    iget-object p1, p0, Lo/KK;->c:Landroid/widget/TextView;

    new-instance p2, Lo/KK$Application;

    invoke-direct {p2, p0}, Lo/KK$Application;-><init>(Lo/KK;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object p1, p0, Lo/KK;->c:Landroid/widget/TextView;

    new-instance p2, Lo/KK$2;

    invoke-direct {p2, p0}, Lo/KK$2;-><init>(Lo/KK;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic b(Lo/KK;)Lo/KK$ActionBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/KK;->d:Lo/KK$ActionBar;

    return-object p0
.end method

.method public static final synthetic d(Lo/KK;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/KK;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 26
    sget v0, Lo/KK;->f:I

    return v0
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 2

    const-string v0, "lomo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lo/KF;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 80
    iget-object v0, p0, Lo/KK;->c:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lo/KK;->c:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1}, Lo/KK;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method
