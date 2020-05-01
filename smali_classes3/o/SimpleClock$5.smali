.class Lo/SimpleClock$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SimpleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/SimpleClock;


# direct methods
.method constructor <init>(Lo/SimpleClock;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/SimpleClock$5;->c:Lo/SimpleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/SimpleClock$5;->c:Lo/SimpleClock;

    invoke-static {v0}, Lo/SimpleClock;->b(Lo/SimpleClock;)V

    return-void
.end method
