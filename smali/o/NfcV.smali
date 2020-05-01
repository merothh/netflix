.class public final Lo/NfcV;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(ILo/amT;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/amT<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/amT;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not found."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final a(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
            "*>;)",
            "Lo/alN<",
            "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
            "*>;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 138
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$lifecycleFinder$1;->e:Lcom/netflix/android/kotlinx/ButterKnifeKt$lifecycleFinder$1;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method private static final a(Lo/VibrationEffect;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/VibrationEffect<",
            "*>;)",
            "Lo/alN<",
            "Lo/VibrationEffect<",
            "*>;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;->e:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method public static final a(Landroid/view/View;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)",
            "Lo/ams<",
            "Landroid/view/View;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lo/NfcV;->e(Landroid/view/View;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final a(Lo/PushbackReader;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/PushbackReader;",
            "I)",
            "Lo/ams<",
            "Lo/PushbackReader;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lo/NfcV;->c(Lo/PushbackReader;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method private static final b(ILo/alN;)Lo/BatteryManagerInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroid/view/View;",
            ">(I",
            "Lo/alN<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lo/BatteryManagerInternal<",
            "TT;TV;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lo/BatteryManagerInternal;

    new-instance v1, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;

    invoke-direct {v1, p1, p0}, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;-><init>(Lo/alN;I)V

    check-cast v1, Lo/alN;

    invoke-direct {v0, v1}, Lo/BatteryManagerInternal;-><init>(Lo/alN;)V

    return-object v0
.end method

.method private static final b(Landroidx/fragment/app/Fragment;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lo/alN<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$7;->d:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$7;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method public static final b(Landroid/view/View;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)",
            "Lo/ams<",
            "Landroid/view/View;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindOptionalView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lo/NfcV;->e(Landroid/view/View;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->b(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final b(Landroidx/fragment/app/Fragment;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "I)",
            "Lo/ams<",
            "Landroidx/fragment/app/Fragment;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final b(Lo/VibrationEffect;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/VibrationEffect<",
            "*>;I)",
            "Lo/ams<",
            "Lo/VibrationEffect<",
            "*>;TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lo/NfcV;->a(Lo/VibrationEffect;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final synthetic c(ILo/amT;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/NfcV;->a(ILo/amT;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lo/PushbackReader;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PushbackReader;",
            ")",
            "Lo/alN<",
            "Lo/PushbackReader;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$5;->d:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$5;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method private static final c(Lo/ShellCommand$ActionBar;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ShellCommand$ActionBar;",
            ")",
            "Lo/alN<",
            "Lo/ShellCommand$ActionBar;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$9;->b:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$9;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method public static final c(Lcom/netflix/mediaclient/common/ui/LifecycleController;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
            "*>;I)",
            "Lo/ams<",
            "Lcom/netflix/mediaclient/common/ui/LifecycleController<",
            "*>;TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lo/NfcV;->a(Lcom/netflix/mediaclient/common/ui/LifecycleController;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method private static final d(ILo/alN;)Lo/BatteryManagerInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroid/view/View;",
            ">(I",
            "Lo/alN<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lo/BatteryManagerInternal<",
            "TT;TV;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lo/BatteryManagerInternal;

    new-instance v1, Lcom/netflix/android/kotlinx/ButterKnifeKt$required$1;

    invoke-direct {v1, p1, p0}, Lcom/netflix/android/kotlinx/ButterKnifeKt$required$1;-><init>(Lo/alN;I)V

    check-cast v1, Lo/alN;

    invoke-direct {v0, v1}, Lo/BatteryManagerInternal;-><init>(Lo/alN;)V

    return-object v0
.end method

.method private static final d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            ")",
            "Lo/alN<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 136
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$8;->d:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$8;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method public static final d(Landroidx/fragment/app/Fragment;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "I)",
            "Lo/ams<",
            "Landroidx/fragment/app/Fragment;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindOptionalView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->b(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "I)",
            "Lo/ams<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final d(Lo/UpdateEngineCallback;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/UpdateEngineCallback;",
            "I)",
            "Lo/ams<",
            "Lo/UpdateEngineCallback;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lo/NfcV;->e(Lo/UpdateEngineCallback;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method public static final d(Lo/VibrationEffect;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/VibrationEffect<",
            "*>;I)",
            "Lo/ams<",
            "Lo/VibrationEffect<",
            "*>;TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindOptionalView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lo/NfcV;->a(Lo/VibrationEffect;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->b(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method private static final e(Landroid/view/View;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lo/alN<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$1;->c:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$1;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method private static final e(Lo/UpdateEngineCallback;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UpdateEngineCallback;",
            ")",
            "Lo/alN<",
            "Lo/UpdateEngineCallback;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$11;->c:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$11;

    check-cast p0, Lo/alN;

    return-object p0
.end method

.method public static final e(Lo/ShellCommand$ActionBar;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/ShellCommand$ActionBar;",
            "I)",
            "Lo/ams<",
            "Lo/ShellCommand$ActionBar;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lo/NfcV;->c(Lo/ShellCommand$ActionBar;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/NfcV;->d(ILo/alN;)Lo/BatteryManagerInternal;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method
