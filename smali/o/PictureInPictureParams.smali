.class public abstract Lo/PictureInPictureParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lo/TaskStackBuilder;)Lo/PictureInPictureParams;
    .locals 2

    .line 182
    new-instance v0, Lo/VoiceInteractor;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo/VoiceInteractor;-><init>(Landroid/content/Context;Landroid/view/Window;Lo/TaskStackBuilder;)V

    return-object v0
.end method

.method public static c(Landroid/app/Dialog;Lo/TaskStackBuilder;)Lo/PictureInPictureParams;
    .locals 2

    .line 191
    new-instance v0, Lo/VoiceInteractor;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lo/VoiceInteractor;-><init>(Landroid/content/Context;Landroid/view/Window;Lo/TaskStackBuilder;)V

    return-object v0
.end method

.method public static m()I
    .locals 1

    .line 486
    sget v0, Lo/PictureInPictureParams;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()Lo/Fragment;
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Landroid/content/res/Configuration;)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/os/Bundle;)V
.end method

.method public abstract d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract d(Ljava/lang/CharSequence;)V
.end method

.method public abstract e()Landroid/view/MenuInflater;
.end method

.method public abstract e(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
.end method

.method public abstract e(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Lo/FragmentManager$Application;
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method
