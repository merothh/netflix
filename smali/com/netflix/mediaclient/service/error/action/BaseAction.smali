.class abstract Lcom/netflix/mediaclient/service/error/action/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Owner activity can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/action/BaseAction;->mActivity:Landroid/app/Activity;

    return-void
.end method
