.class final Lo/DexFile$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DexClassLoader$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DexFile;->b(Landroid/content/Context;Lo/Toast;Lo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/DexClassLoader$ActionBar<",
        "Lo/DexFile$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lo/DexFile$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/DexFile$StateListAnimator;)V
    .locals 4

    .line 307
    sget-object v0, Lo/DexFile;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    sget-object v1, Lo/DexFile;->b:Lo/TextWatcher;

    iget-object v2, p0, Lo/DexFile$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_0
    sget-object v2, Lo/DexFile;->b:Lo/TextWatcher;

    iget-object v3, p0, Lo/DexFile$2;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/DexClassLoader$ActionBar;

    invoke-interface {v2, p1}, Lo/DexClassLoader$ActionBar;->c(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 313
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lo/DexFile$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/DexFile$2;->b(Lo/DexFile$StateListAnimator;)V

    return-void
.end method
