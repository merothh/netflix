.class final Lo/DHGenParameterSpec$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DHGenParameterSpec;->e(Landroid/content/Context;Ljava/lang/String;)Lo/DHParameterSpec;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lo/DHGenParameterSpec$4;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/DHGenParameterSpec$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lo/DHGenParameterSpec$4;->d()Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/GCMParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/GCMParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/DHGenParameterSpec$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/DHGenParameterSpec$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/DHGenParameterSpec;->a(Landroid/content/Context;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method
