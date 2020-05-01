.class Landroidx/viewpager2/widget/ViewPager2$5;
.super Landroidx/viewpager2/widget/ViewPager2$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$5;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-eq v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->d:Landroidx/viewpager2/widget/ViewPager2;

    iput p1, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 217
    iget-object p1, v0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->a()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$5;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->b()V

    :cond_0
    return-void
.end method
