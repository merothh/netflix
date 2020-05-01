.class final Lo/WQ$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WQ;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WQ;


# direct methods
.method constructor <init>(Lo/WQ;)V
    .locals 0

    iput-object p1, p0, Lo/WQ$2;->a:Lo/WQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lo/WQ$2;->a:Lo/WQ;

    invoke-virtual {p1}, Lo/WQ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/UU$TaskDescription;->c:Lo/UU$TaskDescription;

    goto :goto_0

    :cond_0
    sget-object v0, Lo/UU$StateListAnimator;->e:Lo/UU$StateListAnimator;

    :goto_0
    check-cast v0, Lo/UU;

    invoke-virtual {p1, v0}, Lo/WQ;->e(Ljava/lang/Object;)V

    return-void
.end method
