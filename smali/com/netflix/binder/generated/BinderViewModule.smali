.class public Lcom/netflix/binder/generated/BinderViewModule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netflix/binder/generated/BinderViewModule;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netflix/binder/generated/BinderViewModule;->d:Landroid/view/View;

    return-object v0
.end method
