.class public final Lo/HealthKeys;
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
.field private final c:Lcom/netflix/binder/generated/BinderApplicationModule;


# direct methods
.method public constructor <init>(Lcom/netflix/binder/generated/BinderApplicationModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/HealthKeys;->c:Lcom/netflix/binder/generated/BinderApplicationModule;

    return-void
.end method

.method public static d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/netflix/binder/generated/BinderApplicationModule;->b()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public static e(Lcom/netflix/binder/generated/BinderApplicationModule;)Lo/HealthKeys;
    .locals 1

    .line 26
    new-instance v0, Lo/HealthKeys;

    invoke-direct {v0, p0}, Lo/HealthKeys;-><init>(Lcom/netflix/binder/generated/BinderApplicationModule;)V

    return-object v0
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/HealthKeys;->c:Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v0}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/HealthKeys;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
