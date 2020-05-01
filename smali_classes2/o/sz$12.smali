.class Lo/sz$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;Ljava/util/List;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lo/sz$12;->d:Lo/sz;

    iput-object p2, p0, Lo/sz$12;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lo/sz$12;->d:Lo/sz;

    iget-object v1, p0, Lo/sz$12;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lo/sz;->e(Lo/sz;Ljava/util/List;)V

    return-void
.end method
