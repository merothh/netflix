.class Lo/acW$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lo/acW$5;->c:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object p2, p0, Lo/acW$5;->c:Lo/acW;

    invoke-static {p2, p1, v0}, Lo/acW;->d(Lo/acW;Landroid/view/View;Z)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object p2, p0, Lo/acW$5;->c:Lo/acW;

    invoke-static {p2, p1, v1}, Lo/acW;->d(Lo/acW;Landroid/view/View;Z)V

    :goto_0
    return v0
.end method
