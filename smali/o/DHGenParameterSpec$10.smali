.class final Lo/DHGenParameterSpec$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lo/GCMParameterSpec<",
        "Lo/DESedeKeySpec;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/DESedeKeySpec;


# direct methods
.method constructor <init>(Lo/DESedeKeySpec;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lo/DHGenParameterSpec$10;->e:Lo/DESedeKeySpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Lo/GCMParameterSpec;

    iget-object v1, p0, Lo/DHGenParameterSpec$10;->e:Lo/DESedeKeySpec;

    invoke-direct {v0, v1}, Lo/GCMParameterSpec;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lo/DHGenParameterSpec$10;->c()Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method
