.class Lo/nI$ActionBar$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nI$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nI$ActionBar;


# direct methods
.method constructor <init>(Lo/nI$ActionBar;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lo/nI$ActionBar$4;->a:Lo/nI$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 750
    iget-object v0, p0, Lo/nI$ActionBar$4;->a:Lo/nI$ActionBar;

    iget-object v0, v0, Lo/nI$ActionBar;->e:Lo/nI;

    invoke-static {v0}, Lo/nI;->e(Lo/nI;)Lo/nI$Activity;

    move-result-object v0

    invoke-interface {v0}, Lo/nI$Activity;->h()V

    return-void
.end method
