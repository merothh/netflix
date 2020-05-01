.class Lo/yV$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yV;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/yV;


# direct methods
.method constructor <init>(Lo/yV;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lo/yV$3;->c:Lo/yV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lo/yV$3;->c:Lo/yV;

    invoke-static {v0}, Lo/yV;->b(Lo/yV;)V

    return-void
.end method
