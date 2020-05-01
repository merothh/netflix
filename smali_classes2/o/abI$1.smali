.class Lo/abI$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abI;->a(Lo/abE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abI;


# direct methods
.method constructor <init>(Lo/abI;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lo/abI$1;->a:Lo/abI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/abI$1;->a:Lo/abI;

    invoke-static {v0}, Lo/abI;->c(Lo/abI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lo/abI$1;->a:Lo/abI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/abI;->c(Z)V

    .line 249
    iget-object v0, p0, Lo/abI$1;->a:Lo/abI;

    invoke-static {v0, v1}, Lo/abI;->e(Lo/abI;Z)Z

    :cond_0
    return-void
.end method
