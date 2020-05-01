.class Lo/Uh$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uh;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Uh;


# direct methods
.method constructor <init>(Lo/Uh;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lo/Uh$3;->c:Lo/Uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lo/Uh$3;->c:Lo/Uh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Uh;->c(Z)V

    return-void
.end method
