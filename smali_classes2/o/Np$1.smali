.class Lo/Np$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/Np$1;->a:Lo/Np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/Np$1;->a:Lo/Np;

    invoke-virtual {v0}, Lo/Np;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lo/Np$1;->a:Lo/Np;

    invoke-static {v0}, Lo/Np;->a(Lo/Np;)Lo/OA;

    move-result-object v0

    invoke-virtual {v0}, Lo/OA;->A()V

    :cond_0
    return-void
.end method
