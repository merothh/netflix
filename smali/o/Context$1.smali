.class Lo/Context$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Context;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Context;


# direct methods
.method constructor <init>(Lo/Context;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lo/Context$1;->e:Lo/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 474
    iget-object v0, p0, Lo/Context$1;->e:Lo/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Context;->c(Z)V

    .line 475
    iget-object v0, p0, Lo/Context$1;->e:Lo/Context;

    invoke-virtual {v0}, Lo/Context;->invalidateSelf()V

    return-void
.end method
