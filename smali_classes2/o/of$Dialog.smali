.class final Lo/of$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/of;


# direct methods
.method constructor <init>(Lo/of;)V
    .locals 0

    iput-object p1, p0, Lo/of$Dialog;->b:Lo/of;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/of$Dialog;->b:Lo/of;

    invoke-static {v0}, Lo/of;->e(Lo/of;)V

    .line 68
    iget-object v0, p0, Lo/of$Dialog;->b:Lo/of;

    invoke-static {v0}, Lo/of;->c(Lo/of;)V

    return-void
.end method
