.class public Lcom/netflix/binder/generated/BinderActivityModule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netflix/binder/generated/BinderActivityModule;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/binder/generated/BinderActivityModule;->b:Landroid/app/Activity;

    return-object v0
.end method
