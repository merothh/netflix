.class final Lo/au$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/au;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/alB;Lo/alS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/au;


# direct methods
.method constructor <init>(Lo/au;)V
    .locals 0

    iput-object p1, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 58
    iget-object v0, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-static {v0}, Lo/au;->b(Lo/au;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lo/au$ActionBar;->a:Lo/au;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/au;->c(Lo/au;I)V

    .line 60
    iget-object v0, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lo/au;->d(Lo/au;Ljava/lang/Long;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-static {v0, p1, p2}, Lo/au;->a(Lo/au;J)V

    .line 63
    iget-object p1, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-static {p1}, Lo/au;->e(Lo/au;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lo/au;->c(Lo/au;I)V

    .line 64
    iget-object p1, p0, Lo/au$ActionBar;->a:Lo/au;

    invoke-static {p1}, Lo/au;->c(Lo/au;)V

    return-void
.end method
