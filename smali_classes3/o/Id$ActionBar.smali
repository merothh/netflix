.class public final Lo/Id$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Id;-><init>(Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Id;


# direct methods
.method constructor <init>(Lo/Id;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 62
    :cond_0
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Lo/GX;

    invoke-static {p1, v0}, Lo/Id;->c(Lo/Id;Lo/GX;)V

    .line 63
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lo/Id;->e(Lo/Id;Ljava/lang/Integer;)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-virtual {p1}, Lo/Id;->c()V

    goto :goto_1

    .line 35
    :cond_2
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->b(Lo/Id;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 39
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->d(Lo/Id;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Id;->a(Lo/Id;Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result v0

    invoke-static {p1, v0}, Lo/Id;->a(Lo/Id;I)V

    .line 43
    :cond_3
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->e(Lo/Id;)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {v0}, Lo/Id;->b(Lo/Id;)I

    move-result v0

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_6

    :goto_0
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->b(Lo/Id;)I

    move-result p1

    if-eq p1, p2, :cond_6

    .line 45
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->b(Lo/Id;)I

    move-result p2

    invoke-static {p1, p2}, Lo/Id;->c(Lo/Id;I)Lo/GX;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 46
    sget-object p2, Lo/Id;->a:Lo/Id$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 49
    iget-object p2, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p2, p1}, Lo/Id;->c(Lo/Id;Lo/GX;)V

    .line 51
    iget-object p2, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-virtual {p2}, Lo/Id;->e()Lo/alA;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_5
    iget-object p1, p0, Lo/Id$ActionBar;->c:Lo/Id;

    invoke-static {p1}, Lo/Id;->b(Lo/Id;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lo/Id;->e(Lo/Id;Ljava/lang/Integer;)V

    :cond_6
    :goto_1
    return-void
.end method
