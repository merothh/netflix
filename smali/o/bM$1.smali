.class Lo/bM$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 1946
    iput-object p1, p0, Lo/bM$1;->c:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1949
    iget-object v0, p0, Lo/bM$1;->c:Lo/bM;

    invoke-static {v0}, Lo/bM;->z(Lo/bM;)V

    return-void
.end method
