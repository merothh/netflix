.class Lo/Cursor$ActionBar;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic e:Lo/Cursor;


# direct methods
.method public constructor <init>(Lo/Cursor;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    .line 300
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lo/Handler;
    .locals 1

    .line 305
    iget-object v0, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    iget-object v0, v0, Lo/Cursor;->a:Lo/Cursor$TaskDescription;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    iget-object v0, v0, Lo/Cursor;->a:Lo/Cursor$TaskDescription;

    invoke-virtual {v0}, Lo/Cursor$TaskDescription;->getPopup()Lo/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    iget-object v0, v0, Lo/Cursor;->b:Lo/Mode$TaskDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    iget-object v0, v0, Lo/Cursor;->b:Lo/Mode$TaskDescription;

    iget-object v2, p0, Lo/Cursor$ActionBar;->e:Lo/Cursor;

    iget-object v2, v2, Lo/Cursor;->c:Lo/Rect;

    invoke-interface {v0, v2}, Lo/Mode$TaskDescription;->invokeItem(Lo/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lo/Cursor$ActionBar;->getPopup()Lo/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lo/Handler;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
