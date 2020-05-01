.class final Lo/WebSettings$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebSettings;->b(Lo/DHParameterSpec;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/DHParameterSpec;


# direct methods
.method constructor <init>(Lo/DHParameterSpec;)V
    .locals 0

    iput-object p1, p0, Lo/WebSettings$Application;->b:Lo/DHParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lo/DESedeKeySpec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lo/WebSettings$Application;->b:Lo/DHParameterSpec;

    new-instance v1, Lo/WebSettings$Application$1;

    invoke-direct {v1, p0, p1}, Lo/WebSettings$Application$1;-><init>(Lo/WebSettings$Application;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/SecretKeyFactorySpi;

    invoke-virtual {v0, v1}, Lo/DHParameterSpec;->a(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    .line 201
    iget-object v0, p0, Lo/WebSettings$Application;->b:Lo/DHParameterSpec;

    new-instance v1, Lo/WebSettings$Application$5;

    invoke-direct {v1, p0, p1}, Lo/WebSettings$Application$5;-><init>(Lo/WebSettings$Application;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/SecretKeyFactorySpi;

    invoke-virtual {v0, v1}, Lo/DHParameterSpec;->c(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    return-void
.end method
