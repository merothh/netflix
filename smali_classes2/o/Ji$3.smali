.class Lo/Ji$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ji;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ji;


# direct methods
.method constructor <init>(Lo/Ji;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/Ji$3;->a:Lo/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lo/Ji$3;->a:Lo/Ji;

    invoke-static {v0}, Lo/Ji;->b(Lo/Ji;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 156
    iget-object v0, p0, Lo/Ji$3;->a:Lo/Ji;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Ji;->e(Lo/Ji;Z)Z

    .line 157
    iget-object v0, p0, Lo/Ji$3;->a:Lo/Ji;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/Ji;->d(Lo/Ji;Z)Z

    return-void
.end method
