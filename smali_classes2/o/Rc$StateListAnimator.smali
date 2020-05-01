.class final Lo/Rc$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rc;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Rc;


# direct methods
.method constructor <init>(Lo/Rc;)V
    .locals 0

    iput-object p1, p0, Lo/Rc$StateListAnimator;->a:Lo/Rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/Rc$StateListAnimator;->a:Lo/Rc;

    invoke-virtual {v0}, Lo/Rc;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->onBackPressed()V

    :cond_0
    return-void
.end method
