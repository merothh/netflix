.class public final Lo/ChangeImageTransform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/EntityConfidence;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;


# direct methods
.method public static b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Lo/EntityConfidence;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;->c(Landroid/content/Context;)Lo/EntityConfidence;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/EntityConfidence;

    return-object p0
.end method


# virtual methods
.method public d()Lo/EntityConfidence;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/ChangeImageTransform;->e:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    iget-object v1, p0, Lo/ChangeImageTransform;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lo/ChangeImageTransform;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Landroid/content/Context;)Lo/EntityConfidence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/ChangeImageTransform;->d()Lo/EntityConfidence;

    move-result-object v0

    return-object v0
.end method
