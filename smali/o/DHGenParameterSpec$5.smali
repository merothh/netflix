.class final Lo/DHGenParameterSpec$5;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lo/DHGenParameterSpec$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)V
    .locals 1

    .line 392
    invoke-static {}, Lo/DHGenParameterSpec;->b()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/DHGenParameterSpec$5;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 389
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/DHGenParameterSpec$5;->d(Ljava/lang/Throwable;)V

    return-void
.end method
