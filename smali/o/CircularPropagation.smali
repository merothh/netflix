.class public final Lo/CircularPropagation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static d(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lo/CircularPropagation;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    iget-object v1, p0, Lo/CircularPropagation;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lo/CircularPropagation;->d(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/CircularPropagation;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
