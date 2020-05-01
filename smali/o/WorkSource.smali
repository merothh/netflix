.class public final Lo/WorkSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/binder/generated/BinderActivityModule;


# direct methods
.method public static a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/binder/generated/BinderActivityModule;->a()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/WorkSource;->a:Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v0}, Lo/WorkSource;->a(Lcom/netflix/binder/generated/BinderActivityModule;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/WorkSource;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
