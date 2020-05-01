.class final Lo/DHGenParameterSpec$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SecretKeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DHGenParameterSpec;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/DHParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SecretKeyFactorySpi<",
        "Lo/DESedeKeySpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lo/DHGenParameterSpec$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/DESedeKeySpec;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lo/DHGenParameterSpec$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lo/IntEvaluator;->c()Lo/IntEvaluator;

    move-result-object v0

    iget-object v1, p0, Lo/DHGenParameterSpec$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/IntEvaluator;->c(Ljava/lang/String;Lo/DESedeKeySpec;)V

    .line 386
    :cond_0
    invoke-static {}, Lo/DHGenParameterSpec;->b()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/DHGenParameterSpec$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, Lo/DESedeKeySpec;

    invoke-virtual {p0, p1}, Lo/DHGenParameterSpec$1;->d(Lo/DESedeKeySpec;)V

    return-void
.end method
