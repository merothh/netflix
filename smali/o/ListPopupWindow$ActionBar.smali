.class public final Lo/ListPopupWindow$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lo/ListPopupWindow;


# direct methods
.method public constructor <init>(Lo/ListPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lo/ListPopupWindow$ActionBar;->d:Lo/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    iget-object v2, p0, Lo/ListPopupWindow$ActionBar;->d:Lo/ListPopupWindow;

    invoke-static {v2}, Lo/ListPopupWindow;->a(Lo/ListPopupWindow;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v2, 0x64

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 23
    iget-object v0, p0, Lo/ListPopupWindow$ActionBar;->d:Lo/ListPopupWindow;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lo/ListPopupWindow;->e(Lo/ListPopupWindow;J)V

    .line 24
    iget-object v0, p0, Lo/ListPopupWindow$ActionBar;->d:Lo/ListPopupWindow;

    invoke-virtual {v0}, Lo/ListPopupWindow;->d()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lo/ListPopupWindow$ActionBar;->d:Lo/ListPopupWindow;

    invoke-static {v0}, Lo/ListPopupWindow;->c(Lo/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
