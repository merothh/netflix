.class public Lcom/netflix/binder/generated/BinderFragmentModule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netflix/binder/generated/BinderFragmentModule;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public b()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/binder/generated/BinderFragmentModule;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
