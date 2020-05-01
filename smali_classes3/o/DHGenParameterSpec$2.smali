.class final Lo/DHGenParameterSpec$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DHGenParameterSpec;->b(Landroid/content/Context;I)Lo/DHParameterSpec;
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
.field final synthetic b:I

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/DHGenParameterSpec$2;->d:Landroid/content/Context;

    iput p2, p0, Lo/DHGenParameterSpec$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lo/DHGenParameterSpec$2;->d:Landroid/content/Context;

    iget v1, p0, Lo/DHGenParameterSpec$2;->b:I

    invoke-static {v0, v1}, Lo/DHGenParameterSpec;->d(Landroid/content/Context;I)Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lo/DHGenParameterSpec$2;->a()Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method
