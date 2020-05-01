.class public final Lo/SubscriptSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;


# direct methods
.method public static e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;)Landroid/content/Context;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;->e()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public d()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SubscriptSpan;->c:Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    invoke-static {v0}, Lo/SubscriptSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/SubscriptSpan;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
