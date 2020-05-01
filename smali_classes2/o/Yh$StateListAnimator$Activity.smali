.class public final Lo/Yh$StateListAnimator$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Yh$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lo/Yh$StateListAnimator;->e:Lo/Yh$StateListAnimator;

    invoke-static {v0, p1, p2, p3}, Lo/Yh$StateListAnimator;->e(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 260
    sget-object p2, Lo/Yh$StateListAnimator;->e:Lo/Yh$StateListAnimator;

    invoke-static {p2, p1}, Lo/Yh$StateListAnimator;->d(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 262
    sget-object p2, Lo/Yh$StateListAnimator;->e:Lo/Yh$StateListAnimator;

    invoke-static {p2, p1}, Lo/Yh$StateListAnimator;->e(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method
