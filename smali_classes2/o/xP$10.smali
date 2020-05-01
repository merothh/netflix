.class Lo/xP$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xP;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/xP;


# direct methods
.method constructor <init>(Lo/xP;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lo/xP$10;->b:Lo/xP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lo/xP$10;->b:Lo/xP;

    invoke-static {v0}, Lo/xP;->d(Lo/xP;)Lo/Ac;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/Ac;->c(IZ)V

    return-void
.end method
