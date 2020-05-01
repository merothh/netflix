.class public final Lo/WebSettings$Application$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SecretKeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebSettings$Application;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic b:Lo/WebSettings$Application;

.field final synthetic d:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lo/WebSettings$Application;Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter;",
            ")V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lo/WebSettings$Application$1;->b:Lo/WebSettings$Application;

    iput-object p2, p0, Lo/WebSettings$Application$1;->d:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lo/DESedeKeySpec;

    invoke-virtual {p0, p1}, Lo/WebSettings$Application$1;->e(Lo/DESedeKeySpec;)V

    return-void
.end method

.method public e(Lo/DESedeKeySpec;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lo/WebSettings$Application$1;->b:Lo/WebSettings$Application;

    iget-object v0, v0, Lo/WebSettings$Application;->b:Lo/DHParameterSpec;

    move-object v1, p0

    check-cast v1, Lo/SecretKeyFactorySpi;

    invoke-virtual {v0, v1}, Lo/DHParameterSpec;->b(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    .line 198
    iget-object v0, p0, Lo/WebSettings$Application$1;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
