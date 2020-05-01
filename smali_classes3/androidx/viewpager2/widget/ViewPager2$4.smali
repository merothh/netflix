.class Landroidx/viewpager2/widget/ViewPager2$4;
.super Landroidx/viewpager2/widget/ViewPager2$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$4;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$Activity;-><init>(Landroidx/viewpager2/widget/ViewPager2$4;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$4;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    .line 137
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->a()V

    return-void
.end method
