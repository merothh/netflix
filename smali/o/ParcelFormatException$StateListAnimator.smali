.class public Lo/ParcelFormatException$StateListAnimator;
.super Lo/ParcelFormatException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ParcelFormatException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ParcelFormatException<",
        "Lo/ParcelFormatException$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/PooledStringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-static {v0}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v0

    sput-object v0, Lo/ParcelFormatException$StateListAnimator;->c:Lo/PooledStringWriter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 470
    sget-object v0, Lo/ParcelFormatException$StateListAnimator;->c:Lo/PooledStringWriter;

    invoke-direct {p0, p1, v0, p2}, Lo/ParcelFormatException;-><init>(Landroid/content/Context;Lo/PooledStringWriter;I)V

    return-void
.end method


# virtual methods
.method public b(Lo/ParcelFormatException$Activity;I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lo/ParcelFormatException$Activity;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1, p2}, Lo/ParcelFormatException;->e(Lo/ParcelFormatException$Activity;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1, p2, p3}, Lo/ParcelFormatException;->b(Lo/ParcelFormatException$Activity;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 465
    invoke-virtual {p0, p1, p2}, Lo/ParcelFormatException$StateListAnimator;->c(Landroid/view/ViewGroup;I)Lo/ParcelFormatException$Activity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1}, Lo/ParcelFormatException;->d(Lo/ParcelFormatException$Activity;)Z

    move-result p1

    return p1
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1}, Lo/ParcelFormatException;->c(Lo/ParcelFormatException$Activity;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1}, Lo/ParcelFormatException;->b(Lo/ParcelFormatException$Activity;)V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 465
    check-cast p1, Lo/ParcelFormatException$Activity;

    invoke-super {p0, p1}, Lo/ParcelFormatException;->a(Lo/ParcelFormatException$Activity;)V

    return-void
.end method
