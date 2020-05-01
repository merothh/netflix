.class public final Lo/HealthStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/binder/generated/BinderFragmentModule;


# direct methods
.method public static c(Lcom/netflix/binder/generated/BinderFragmentModule;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/binder/generated/BinderFragmentModule;->b()Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/HealthStats;->a:Lcom/netflix/binder/generated/BinderFragmentModule;

    invoke-static {v0}, Lo/HealthStats;->c(Lcom/netflix/binder/generated/BinderFragmentModule;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/HealthStats;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method
