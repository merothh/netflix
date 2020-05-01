.class public Lcom/netflix/binder/generated/BinderApplicationModule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/binder/generated/BinderApplicationModule;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/binder/generated/BinderApplicationModule;->d:Landroid/content/Context;

    return-object v0
.end method

.method public e()Landroid/app/Application;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/binder/generated/BinderApplicationModule;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method
