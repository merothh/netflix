.class public Lo/Exception;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/Serializable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;
    .locals 1

    .line 101
    invoke-static {p0}, Lo/Exception;->a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lo/Exception;->d(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 103
    invoke-static {v0}, Lo/Deprecated$StateListAnimator;->e(Landroid/app/Application;)Lo/Deprecated$StateListAnimator;

    move-result-object p1

    .line 105
    :cond_0
    new-instance v0, Lo/Deprecated;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Lo/ExceptionInInitializerError;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lo/Deprecated;-><init>(Lo/ExceptionInInitializerError;Lo/Deprecated$ActionBar;)V

    return-object v0
.end method

.method public static c(Lo/Serializable;Lo/Deprecated$ActionBar;)Lo/Deprecated;
    .locals 1

    .line 122
    invoke-static {p0}, Lo/Exception;->d(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 124
    invoke-static {v0}, Lo/Deprecated$StateListAnimator;->e(Landroid/app/Application;)Lo/Deprecated$StateListAnimator;

    move-result-object p1

    .line 126
    :cond_0
    new-instance v0, Lo/Deprecated;

    invoke-virtual {p0}, Lo/Serializable;->getViewModelStore()Lo/ExceptionInInitializerError;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lo/Deprecated;-><init>(Lo/ExceptionInInitializerError;Lo/Deprecated$ActionBar;)V

    return-object v0
.end method

.method private static d(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroidx/fragment/app/Fragment;)Lo/Deprecated;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lo/Exception;->c(Landroidx/fragment/app/Fragment;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lo/Serializable;)Lo/Deprecated;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0}, Lo/Exception;->c(Lo/Serializable;Lo/Deprecated$ActionBar;)Lo/Deprecated;

    move-result-object p0

    return-object p0
.end method
