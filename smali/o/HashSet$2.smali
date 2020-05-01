.class final Lo/HashSet$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HashSet;->a(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HashSet;

.field final synthetic c:Lo/Enumeration;

.field final synthetic d:Lo/AbstractMap;

.field final synthetic e:Lo/Dictionary;


# direct methods
.method constructor <init>(Lo/AbstractMap;Lo/Enumeration;Lo/Dictionary;Lo/HashSet;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lo/HashSet$2;->d:Lo/AbstractMap;

    iput-object p2, p0, Lo/HashSet$2;->c:Lo/Enumeration;

    iput-object p3, p0, Lo/HashSet$2;->e:Lo/Dictionary;

    iput-object p4, p0, Lo/HashSet$2;->a:Lo/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 866
    iget-object v0, p0, Lo/HashSet$2;->d:Lo/AbstractMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/AbstractMap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lo/HashSet$2;->c:Lo/Enumeration;

    invoke-virtual {v0}, Lo/Enumeration;->e()V

    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/HashSet$2;->e:Lo/Dictionary;

    iget-object v1, p0, Lo/HashSet$2;->a:Lo/HashSet;

    invoke-interface {v0, v1}, Lo/Dictionary;->a(Lo/HashSet;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lo/HashSet$2;->c:Lo/Enumeration;

    invoke-virtual {v1, v0}, Lo/Enumeration;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 877
    iget-object v1, p0, Lo/HashSet$2;->c:Lo/Enumeration;

    invoke-virtual {v1, v0}, Lo/Enumeration;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 875
    :catch_1
    iget-object v0, p0, Lo/HashSet$2;->c:Lo/Enumeration;

    invoke-virtual {v0}, Lo/Enumeration;->e()V

    :goto_0
    return-void
.end method
