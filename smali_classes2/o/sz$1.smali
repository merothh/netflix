.class Lo/sz$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lo/sz$1;->e:Lo/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 554
    iget-object v0, p0, Lo/sz$1;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->g(Lo/sz;)V

    return-void
.end method
