.class public Lo/OnCreateContextMenuListener;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lo/UnicodeScript;
.implements Lo/Closeable$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OnCreateContextMenuListener$Application;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/Class<",
            "+",
            "Lo/OnCreateContextMenuListener$Application;",
            ">;",
            "Lo/OnCreateContextMenuListener$Application;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Lo/ClassCastException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lo/TextWatcher;

    invoke-direct {v0}, Lo/TextWatcher;-><init>()V

    iput-object v0, p0, Lo/OnCreateContextMenuListener;->mExtraDataMap:Lo/TextWatcher;

    .line 62
    new-instance v0, Lo/ClassCastException;

    invoke-direct {v0, p0}, Lo/ClassCastException;-><init>(Lo/UnicodeScript;)V

    iput-object v0, p0, Lo/OnCreateContextMenuListener;->mLifecycleRegistry:Lo/ClassCastException;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Lo/OnCreateContextMenuListener;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0, p1}, Lo/Closeable;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 133
    :cond_0
    invoke-static {p0, v0, p0, p1}, Lo/Closeable;->d(Lo/Closeable$ActionBar;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lo/OnCreateContextMenuListener;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0, p1}, Lo/Closeable;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Lo/OnCreateContextMenuListener$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/OnCreateContextMenuListener$Application;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/OnCreateContextMenuListener;->mExtraDataMap:Lo/TextWatcher;

    invoke-virtual {v0, p1}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OnCreateContextMenuListener$Application;

    return-object p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/OnCreateContextMenuListener;->mLifecycleRegistry:Lo/ClassCastException;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {p0}, Lo/Compiler;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/OnCreateContextMenuListener;->mLifecycleRegistry:Lo/ClassCastException;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lo/ClassCastException;->d(Landroidx/lifecycle/Lifecycle$State;)V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Lo/OnCreateContextMenuListener$Application;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lo/OnCreateContextMenuListener;->mExtraDataMap:Lo/TextWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
