.class public final Lo/ChangeClipBounds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lcom/netflix/cl/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;


# direct methods
.method public static a(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;)Lcom/netflix/cl/Logger;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;->a()Lcom/netflix/cl/Logger;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/Logger;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/netflix/cl/Logger;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ChangeClipBounds;->d:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    invoke-static {v0}, Lo/ChangeClipBounds;->a(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;)Lcom/netflix/cl/Logger;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/ChangeClipBounds;->e()Lcom/netflix/cl/Logger;

    move-result-object v0

    return-object v0
.end method
