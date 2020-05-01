.class Lo/nI$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nI;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/nI;


# direct methods
.method constructor <init>(Lo/nI;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/nI$3;->c:Lo/nI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/nI$3;->c:Lo/nI;

    invoke-static {v0}, Lo/nI;->d(Lo/nI;)V

    return-void
.end method
