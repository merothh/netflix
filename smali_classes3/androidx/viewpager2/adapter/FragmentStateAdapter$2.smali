.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RSAPrivateCrtKeySpec;->b(Lo/AbstractList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RSAPrivateCrtKeySpec;

.field final synthetic e:Lo/AbstractList;


# direct methods
.method public constructor <init>(Lo/RSAPrivateCrtKeySpec;Lo/AbstractList;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->d:Lo/RSAPrivateCrtKeySpec;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->e:Lo/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 351
    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->d:Lo/RSAPrivateCrtKeySpec;

    invoke-virtual {p2}, Lo/RSAPrivateCrtKeySpec;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Lo/ClassCircularityError;)V

    .line 355
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->e:Lo/AbstractList;

    invoke-virtual {p1}, Lo/AbstractList;->e()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lo/FilterWriter;->C(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->d:Lo/RSAPrivateCrtKeySpec;

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->e:Lo/AbstractList;

    invoke-virtual {p1, p2}, Lo/RSAPrivateCrtKeySpec;->b(Lo/AbstractList;)V

    :cond_1
    return-void
.end method
