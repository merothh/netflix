.class Lo/DHParameterSpec$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DHParameterSpec;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DHParameterSpec;


# direct methods
.method constructor <init>(Lo/DHParameterSpec;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/DHParameterSpec$1;->a:Lo/DHParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/DHParameterSpec$1;->a:Lo/DHParameterSpec;

    invoke-static {v0}, Lo/DHParameterSpec;->d(Lo/DHParameterSpec;)Lo/GCMParameterSpec;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lo/DHParameterSpec$1;->a:Lo/DHParameterSpec;

    invoke-static {v0}, Lo/DHParameterSpec;->d(Lo/DHParameterSpec;)Lo/GCMParameterSpec;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lo/DHParameterSpec$1;->a:Lo/DHParameterSpec;

    invoke-virtual {v0}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lo/DHParameterSpec;->b(Lo/DHParameterSpec;Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lo/DHParameterSpec$1;->a:Lo/DHParameterSpec;

    invoke-virtual {v0}, Lo/GCMParameterSpec;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lo/DHParameterSpec;->e(Lo/DHParameterSpec;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
