.class public final Lo/TypefaceSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ScaleAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/ScaleAnimation;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->n(Landroid/app/Activity;)Lo/ScaleAnimation;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ScaleAnimation;

    return-object p0
.end method


# virtual methods
.method public b()Lo/ScaleAnimation;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/TypefaceSpan;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    iget-object v1, p0, Lo/TypefaceSpan;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lo/TypefaceSpan;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Landroid/app/Activity;)Lo/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/TypefaceSpan;->b()Lo/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method
