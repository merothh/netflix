.class public final Lo/StackView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private d:[Ljava/lang/String;

.field private e:Z


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/StackView;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;)Z
    .locals 5

    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lo/StackView;->e:Z

    if-eqz v0, :cond_0

    .line 50
    iget-boolean p1, p0, Lo/StackView;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 52
    :try_start_1
    iput-boolean v0, p0, Lo/StackView;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-static {p1}, Lo/adk;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 56
    iget-object v1, p0, Lo/StackView;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 57
    invoke-static {p1, v4}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iput-boolean v0, p0, Lo/StackView;->a:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p1, "Av1ModuleLibraryLoader"

    const-string v0, "Library not loaded"

    .line 62
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lo/StackView;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
