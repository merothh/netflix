.class final Lo/Yo$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;-><init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0

    iput-object p1, p0, Lo/Yo$4;->e:Lo/Yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 130
    sget-object p1, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 131
    iget-object p1, p0, Lo/Yo$4;->e:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->j(Lo/Yo;)Lo/DataOutput;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/DataOutput;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "e"

    .line 134
    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lo/Yo$4;->e:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object p1

    new-instance p2, Lo/YB$StateListAnimator;

    invoke-direct {p2, v0}, Lo/YB$StateListAnimator;-><init>(I)V

    invoke-interface {p1, p2}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lo/Yo$4;->e:Lo/Yo;

    const-string p2, "setPlaybackTo from ACTION_UP"

    invoke-virtual {p1, p2}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lo/Yo$4;->e:Lo/Yo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return v0
.end method
