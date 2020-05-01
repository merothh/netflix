.class final Lo/Xp$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xp;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xp;


# direct methods
.method constructor <init>(Lo/Xp;)V
    .locals 0

    iput-object p1, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(IIIIII)V
    .locals 9

    .line 96
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->d(Lo/Xp;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->c(Lo/Xp;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->b(Lo/Xp;)I

    move-result v0

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->a(Lo/Xp;)I

    move-result v0

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->e(Lo/Xp;)I

    move-result v0

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0}, Lo/Xp;->h(Lo/Xp;)I

    move-result v0

    if-eq v0, p6, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p1}, Lo/Xp;->b(Lo/Xp;I)V

    .line 99
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p2}, Lo/Xp;->e(Lo/Xp;I)V

    .line 100
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p3}, Lo/Xp;->a(Lo/Xp;I)V

    .line 101
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p4}, Lo/Xp;->c(Lo/Xp;I)V

    .line 102
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p5}, Lo/Xp;->d(Lo/Xp;I)V

    .line 103
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    invoke-static {v0, p6}, Lo/Xp;->j(Lo/Xp;I)V

    .line 105
    iget-object v0, p0, Lo/Xp$StateListAnimator;->a:Lo/Xp;

    .line 106
    new-instance v8, Lo/UW$AssistContent;

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lo/UW$AssistContent;-><init>(IIIIII)V

    .line 105
    invoke-virtual {v0, v8}, Lo/Xp;->e(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
