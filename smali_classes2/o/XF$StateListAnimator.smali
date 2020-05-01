.class final Lo/XF$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XF;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/XF;


# direct methods
.method constructor <init>(Lo/XF;)V
    .locals 0

    iput-object p1, p0, Lo/XF$StateListAnimator;->d:Lo/XF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/XF$StateListAnimator;->d:Lo/XF;

    invoke-static {v0}, Lo/XF;->e(Lo/XF;)V

    return-void
.end method
