.class Lo/nI$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/nI;


# direct methods
.method constructor <init>(Lo/nI;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lo/nI$5;->e:Lo/nI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 264
    iget-object v0, p0, Lo/nI$5;->e:Lo/nI;

    invoke-static {v0}, Lo/nI;->f(Lo/nI;)V

    return-void
.end method
