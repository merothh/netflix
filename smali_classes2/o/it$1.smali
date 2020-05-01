.class Lo/it$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/it;


# direct methods
.method constructor <init>(Lo/it;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lo/it$1;->a:Lo/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    iget-object v0, p0, Lo/it$1;->a:Lo/it;

    invoke-static {v0}, Lo/it;->c(Lo/it;)V

    return-void
.end method
