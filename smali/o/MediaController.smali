.class public interface abstract Lo/MediaController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaController$StateListAnimator;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lo/Mode;Lo/Rect;)Z
.end method

.method public abstract expandItemActionView(Lo/Mode;Lo/Rect;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract initForMenu(Landroid/content/Context;Lo/Mode;)V
.end method

.method public abstract onCloseMenu(Lo/Mode;Z)V
.end method

.method public abstract onSubMenuSelected(Lo/IBinder;)Z
.end method

.method public abstract setCallback(Lo/MediaController$StateListAnimator;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
