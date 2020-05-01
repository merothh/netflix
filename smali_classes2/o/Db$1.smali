.class Lo/Db$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Db;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Db;


# direct methods
.method constructor <init>(Lo/Db;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lo/Db$1;->d:Lo/Db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 318
    iget-object v0, p0, Lo/Db$1;->d:Lo/Db;

    invoke-static {v0}, Lo/Db;->d(Lo/Db;)V

    return-void
.end method
