.class Landroidx/viewpager2/widget/ViewPager2$FragmentManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/GetField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2$FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroidx/viewpager2/widget/ViewPager2$FragmentManager;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2$FragmentManager;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$4;->c:Landroidx/viewpager2/widget/ViewPager2$FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lo/GetField$TaskDescription;)Z
    .locals 1

    .line 1345
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 1346
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager$4;->c:Landroidx/viewpager2/widget/ViewPager2$FragmentManager;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->i()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;->a(I)V

    return v0
.end method
