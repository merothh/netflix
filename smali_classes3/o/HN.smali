.class public abstract Lo/HN;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HN$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HN$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private j:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Lo/GR;-><init>()V

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 47
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 48
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 47
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lo/HN;->g:I

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 37
    sget v0, Lo/GS$FragmentManager;->x:I

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/HN;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HN$ActionBar;

    invoke-virtual {p0, p1}, Lo/HN;->d(Lo/HN$ActionBar;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/HN$ActionBar;

    invoke-virtual {p0, p1}, Lo/HN;->d(Lo/HN$ActionBar;)V

    return-void
.end method

.method public d(Lo/HN$ActionBar;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lo/HN$ActionBar;->c()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lo/HN;->j:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/NdefFormatable;->a(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)V

    .line 31
    iget v0, p0, Lo/HN;->g:I

    invoke-virtual {p1}, Lo/HN$ActionBar;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "holder.title.layoutParams"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 32
    invoke-virtual {p1}, Lo/HN$ActionBar;->c()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lo/HN;->g:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    invoke-virtual {p1}, Lo/HN$ActionBar;->c()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->requestLayout()V

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/HN;->q()Lo/HN$ActionBar;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 27
    iget v0, p0, Lo/HN;->g:I

    return v0
.end method

.method protected q()Lo/HN$ActionBar;
    .locals 1

    .line 39
    new-instance v0, Lo/HN$ActionBar;

    invoke-direct {v0}, Lo/HN$ActionBar;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/CharSequence;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/HN;->j:Ljava/lang/CharSequence;

    return-object v0
.end method
