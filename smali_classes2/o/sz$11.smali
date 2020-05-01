.class Lo/sz$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->a(Ljava/util/List;Lo/sD$ActionBar;ZZLjava/lang/String;Lo/P;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lo/sz$11;->c:Lo/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 427
    iget-object v0, p0, Lo/sz$11;->c:Lo/sz;

    invoke-static {v0}, Lo/sz;->g(Lo/sz;)V

    return-void
.end method
