.class Lo/jb$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jb;->doInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/jb;


# direct methods
.method constructor <init>(Lo/jb;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lo/jb$4;->c:Lo/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/jb$4;->c:Lo/jb;

    invoke-static {v0}, Lo/jb;->c(Lo/jb;)V

    return-void
.end method
