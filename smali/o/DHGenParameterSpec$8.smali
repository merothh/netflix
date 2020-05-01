.class final Lo/DHGenParameterSpec$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DHGenParameterSpec;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/DHParameterSpec;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/airbnb/lottie/parser/moshi/JsonReader;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lo/DHGenParameterSpec$8;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    iput-object p2, p0, Lo/DHGenParameterSpec$8;->b:Ljava/lang/String;

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

    .line 247
    iget-object v0, p0, Lo/DHGenParameterSpec$8;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    iget-object v1, p0, Lo/DHGenParameterSpec$8;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/DHGenParameterSpec;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lo/DHGenParameterSpec$8;->c()Lo/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method
