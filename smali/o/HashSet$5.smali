.class final Lo/HashSet$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HashSet;->d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Enumeration;

.field final synthetic b:Lo/AbstractMap;

.field final synthetic d:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lo/AbstractMap;Lo/Enumeration;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lo/HashSet$5;->b:Lo/AbstractMap;

    iput-object p2, p0, Lo/HashSet$5;->a:Lo/Enumeration;

    iput-object p3, p0, Lo/HashSet$5;->d:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lo/HashSet$5;->b:Lo/AbstractMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/AbstractMap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lo/HashSet$5;->a:Lo/Enumeration;

    invoke-virtual {v0}, Lo/Enumeration;->e()V

    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/HashSet$5;->a:Lo/Enumeration;

    iget-object v1, p0, Lo/HashSet$5;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Enumeration;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    iget-object v1, p0, Lo/HashSet$5;->a:Lo/Enumeration;

    invoke-virtual {v1, v0}, Lo/Enumeration;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 359
    :catch_1
    iget-object v0, p0, Lo/HashSet$5;->a:Lo/Enumeration;

    invoke-virtual {v0}, Lo/Enumeration;->e()V

    :goto_0
    return-void
.end method
