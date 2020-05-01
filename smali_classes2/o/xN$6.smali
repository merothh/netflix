.class Lo/xN$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Lo/xQ$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xN;

.field final synthetic d:Lo/xQ$ActionBar;


# direct methods
.method constructor <init>(Lo/xN;Lo/xQ$ActionBar;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lo/xN$6;->c:Lo/xN;

    iput-object p2, p0, Lo/xN$6;->d:Lo/xQ$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 721
    iget-object v0, p0, Lo/xN$6;->c:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/xN$6;->d:Lo/xQ$ActionBar;

    invoke-static {v0, v1}, Lo/xQ;->a(Landroid/content/Context;Lo/xQ$ActionBar;)V

    return-void
.end method
