.class public final Lo/Yo$Activity;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;-><init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lo/Yo$Activity;->e:Lo/Yo;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object p1, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object p1, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 100
    iget-object p1, p0, Lo/Yo$Activity;->e:Lo/Yo;

    const-string v0, "setPlaybackTo from onLongPress"

    invoke-virtual {p1, v0}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lo/Yo$Activity;->e:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object p1

    new-instance v0, Lo/YB$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YB$StateListAnimator;-><init>(I)V

    invoke-interface {p1, v0}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lo/Yo$Activity;->e:Lo/Yo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lo/Yo;->b:Lo/Yo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 89
    iget-object v0, p0, Lo/Yo$Activity;->e:Lo/Yo;

    invoke-static {v0}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object v0

    new-instance v1, Lo/YB$ClipData;

    iget-object v2, p0, Lo/Yo$Activity;->e:Lo/Yo;

    invoke-virtual {v2}, Lo/Yo;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v3, p0, Lo/Yo$Activity;->e:Lo/Yo;

    iget-object v3, v3, Lo/Yo;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lo/YB$ClipData;-><init>(IFI)V

    invoke-interface {v0, v1}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
