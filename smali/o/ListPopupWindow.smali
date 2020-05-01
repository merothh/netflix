.class public abstract Lo/ListPopupWindow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListPopupWindow$ActionBar;
    }
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lo/ListPopupWindow;->d:J

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/ListPopupWindow;->b:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lo/ListPopupWindow;)J
    .locals 2

    .line 6
    iget-wide v0, p0, Lo/ListPopupWindow;->d:J

    return-wide v0
.end method

.method public static final synthetic c(Lo/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 6
    iget-object p0, p0, Lo/ListPopupWindow;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic e(Lo/ListPopupWindow;J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lo/ListPopupWindow;->d:J

    return-void
.end method


# virtual methods
.method public abstract d()V
.end method

.method public onScrollChanged()V
    .locals 5

    .line 11
    iget-wide v0, p0, Lo/ListPopupWindow;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 12
    iget-object v0, p0, Lo/ListPopupWindow;->b:Landroid/os/Handler;

    new-instance v1, Lo/ListPopupWindow$ActionBar;

    invoke-direct {v1, p0}, Lo/ListPopupWindow$ActionBar;-><init>(Lo/ListPopupWindow;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ListPopupWindow;->d:J

    return-void
.end method
